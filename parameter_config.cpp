#include "parameter_config.h"

#define VNAME(value) #value

void ParameterMap::ReadFileRecursion(const YAML::Node& root) {
    static std::string map_name;
    if(root.IsMap()) {
        for(auto i : root) {
            std::stringstream a;
            a<<i.first;
            map_name = a.str();
            ReadFileRecursion(i.second);
        }
    }
    else if(root.IsScalar()) {
        std::vector<std::string> temp_vec;
        std::string temp_str(map_name);
        temp_vec.push_back(root.Scalar());
        collections_.insert(std::make_pair(std::move(temp_str), std::move(temp_vec)));
    }
    else if(root.IsSequence()) {
        std::vector<std::string> temp_vec(root.size()); 
        std::string temp_str(map_name);
        for(size_t i=0; i<root.size(); ++i) {
            temp_vec[i] = root[i].Scalar();
        }
        collections_.insert(std::make_pair(std::move(temp_str), std::move(temp_vec)));
    }
    else {
    }
}

void ParameterMap::LoadFile(const std::string& name) {
    YAML::Node root = YAML::LoadFile(name);
    ReadFileRecursion(root);
}

template <typename T>
ERROR_STATUS ParameterMap::GetData(std::vector<T>& para, const std::string& key_word) {
    if(collections_[key_word].size()==para.size()) {
        for(size_t i=0; i<para.size(); ++i) {
            std::stringstream ss;
            ss << collections_[key_word][i];
            if(!SpecificationCheck(ss.str()))
                return PARA_TYPE_MATCH_ERROR;
            ss >> para[i];
        }
        return READ_SUCCESS;
    } else
        return PARA_SIZE_MATCH_ERROR;
}
    
template <typename T>
ERROR_STATUS ParameterMap::GetData(T& para, const std::string& key_word) {
    if(collections_[key_word].size()==1){
        std::stringstream ss(collections_[key_word][0]);
        ss >> para;
        return READ_SUCCESS;
    } else
        return PARA_SIZE_MATCH_ERROR;
}

template <typename T>
ERROR_STATUS ParameterMap::Find(T& para, const std::string& key_word) {
    if(std::is_same<T, double>::value) {
        return GetData(para, key_word);
    } else if(std::is_same<T, int>::value) {
        return GetData(para, key_word);
    } else if(std::is_same<T, std::string>::value) {
        return GetData(para, key_word);
    } else if(std::is_same<T, std::vector<double>>::value) {
        return GetData(para, key_word);
    } else if(std::is_same<T, std::vector<int>>::value) {
        return GetData(para, key_word);
    } else {
        return TEMPLATE_TYPE_MATCH_ERROR;
    }
}
    
template <typename T>
ERROR_STATUS ParameterMap::LoadParameter(T& para, const std::string&& key_word) {
    auto i = collections_.find(key_word);
    if(i != collections_.end()) 
        return Find(para, key_word);
    else
        return FIND_PARA_ERROR;
}
template ERROR_STATUS ParameterMap::LoadParameter(int& para, const std::string&& key_word);
template ERROR_STATUS ParameterMap::LoadParameter(double& para, const std::string&& key_word);
template ERROR_STATUS ParameterMap::LoadParameter(std::vector<int>& para, const std::string&& key_word);
template ERROR_STATUS ParameterMap::LoadParameter(std::vector<double>& para, const std::string&& key_word);
template ERROR_STATUS ParameterMap::LoadParameter(std::string& para, const std::string&& key_word);

int ParameterMap::Size() {
    return collections_.size();
} 


void ParameterMap::ListAll() {
    for(auto i:collections_) {
        std::cout<<i.first<<" : ";
        for(auto j:i.second) {
            std::cout<<j<<" ";
        }
        std::cout<<std::endl;
    }
} 

bool ParameterMap::SpecificationCheck(const std::string& str) {
    for(auto i:str) {
        if(!((i>='0' && i<= '9') || i=='.' || i=='-'))
            return false;
    }
    return true;
}





