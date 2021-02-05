#include <stdio.h>
#include "Capi.cpp"

NGTIndex ngt;
NGTProperty property;
NGTError err;


int main(){

ngt_set_property_distance_type_cosine(property,err);


return 0;
}