#include <iostream>
#include <fstream>
#include <vector>
#include <cstring>
#include <chrono>
#include "NGT/Index.h"

#define TEST 1
 
using namespace std;

int coutnumber(char* a) {
    int len = strlen(a);
    int count = 0, pom = 0;

    for (int i = 1; i < len; i++) {
        if (isdigit(a[i])) {
            pom = 1;
        }
        else if (a[i] == '.')
            continue;
        else if (a[i] == ',') {
            count++;
            pom = 0;
        }
    }
    if (pom == 1)
        count++;

    return count;
}

double get_double(const char* str)
{
    while (*str && !(isdigit(*str) || ((*str == '-' || *str == '+') && isdigit(*(str + 1)))))
        str++;

    return strtod(str, NULL);
}

void fromstrdouble(const char* a, double* b)
{
    int len = strlen(a);
    char buffer[65];
    int start = 0, end = 0;
    int del = 0;
    for (int i = 1; i < len; i++) {
        if (isdigit(a[i]) || a[i] == '.') {
            // pom = 1;
            if (start < 1) {
                start = i;
            }
        }
        else {
            end = i;
            memcpy(buffer, &a[start], end - start);
            start = end = 0;
            b[(del)] = get_double(buffer);
            (del)++;
        }
    }
}

int main(int argc, char** argv) {
  
chrono::high_resolution_clock::time_point t_start, t_end;

  string	indexPath	= "index";
  string filepath;
  cout<<"zadejce cestu k souboru: ";
  cin>>filepath;
    ifstream input;
    input.open(filepath);
    string tmp2;
    getline(input,tmp2);
    int dimension=coutnumber(const_cast<char*>(tmp2.c_str()));
    input.close();
 
 // index construction
 
    NGT::Property	property;
  
    property.dimension		= dimension;
    property.objectType		= NGT::ObjectSpace::ObjectType::Float;
    property.distanceType	= NGT::Index::Property::DistanceType::DistanceTypeCosine;
   
//tohle nen
    NGT::Index::create(indexPath, property);
    NGT::Index	index(indexPath);




    ifstream	is(filepath);
    string	line;


    string pom;
//tady je
    while (getline(is, pom)) {
    	double *pole=new double[dimension];
    	
	vector<double> dest;
	cout<<pom<<endl;
        fromstrdouble(pom.c_str(), pole);
	
	for(int i=0;i<dimension;i++)
		dest.push_back(pole[i]);
       	

	index.append(dest);
	dest.clear();
       	delete[] pole;
	pole=nullptr;	
    }

cout<<"create index"<<endl;
t_start=chrono::high_resolution_clock::now();
    index.createIndex(16);
t_end=chrono::high_resolution_clock::now();
    index.save();
auto duration=chrono::duration_cast<chrono::seconds>(t_end-t_start).count(); 
cout<<"duration of create tree: "<<duration<<"s."<<endl; 


string word;
vector<string> words;
is.close();
is.open(filepath);

while(getline(is,word)){
	words.push_back(word);
}

  int                   queryID = 1;
  vector<float>         query;

#if TEST==2

  index.getObjectSpace().getObject(queryID, query);


#elif TEST== 1
cout<<"zadej vektor:"<<endl;
 for(int i=0;i<dimension;i++){
	float tmp;
cin>>tmp;
query.push_back(tmp);
}
#endif
  t_start=chrono::high_resolution_clock::now();
  NGT::SearchQuery      searchQuery(query);
  NGT::ObjectDistances  results;
  searchQuery.setResults(&results);


  searchQuery.setSize(10);
  searchQuery.setEpsilon(0.1);
  index.search(searchQuery);
t_end=chrono::high_resolution_clock::now();

  cout << "Query No." << queryID << endl;
  cout << "Rank\tID\tDistance" << setprecision(6) << fixed << endl;

  for (size_t i = 0; i < results.size(); i++) {
    cout << i + 1 << "\t" << results[i].id << "\t" << results[i].distance << "\t"<< words[results[i].id - 1] << endl;
  }
  cout << endl;
 duration=chrono::duration_cast<chrono::seconds>(t_end-t_start).count(); 
cout<<"duration of search in tree: "<<duration<<"s."<<endl;   
}

