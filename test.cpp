#include "parameter_config.h"
#include <yaml-cpp/yaml.h>
#include <iostream>
#include <vector>
#include <memory>
#include <cstdlib>
#include <vector>
#include <string>

using namespace std;

#define VNAME(value) #value

class ParameterMap;

int main()
{
    ParameterMap coll;
    coll.LoadFile("../config/test.yaml");
    coll.ListAll();
    cout<<"parameters size: "<<coll.Size()<<endl;

    vector<double> length(5, 0);
    if(coll.LoadParameter(length, string(VNAME(length)))) {
        std::cerr<<"load failed!"<<std::endl;
    }
    cout<<"length: ";
    for(auto i:length)
        cout<<i<<" ";
    cout<<endl;

    double upper_mass;
    if(coll.LoadParameter(upper_mass, string(VNAME(upper_mass)))) {
        std::cerr<<"load failed!"<<std::endl;
    }
    cout<<"upper_mass: "<<upper_mass<<endl;
    
    string str;
    coll.LoadParameter(str, string(VNAME(str)));
    cout<<str<<endl;

    return 0;
}
                 