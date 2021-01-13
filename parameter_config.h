#ifndef PARAMETER_CONFIG_H_
#define PARAMETER_CONFIG_H_

#include <unordered_map>
#include <yaml-cpp/yaml.h>
#include <iostream>
#include <type_traits>
#include <sstream>

// 0:read success 
// 1:template type match error 
// 2:parameter size match error
// 3:parameter type match error 
// 4:cann't find parameter error
enum ERROR_STATUS {
        READ_SUCCESS,
        TEMPLATE_TYPE_MATCH_ERROR,
        PARA_SIZE_MATCH_ERROR,
        PARA_TYPE_MATCH_ERROR,
        FIND_PARA_ERROR
};
class ParameterMap {
 public:
    void LoadFile(const std::string& name);
    int Size();
    void ListAll();
    template <typename T>
    ERROR_STATUS LoadParameter(T& para, const std::string&& key_word);
    
 private:
    std::unordered_map<std::string, std::vector<std::string>> collections_;
    void ReadFileRecursion(const YAML::Node& root);
    bool Find(const std::string& key_word);
    bool SpecificationCheck(const std::string& str);
    template <typename T>
    ERROR_STATUS Find(T& para, const std::string& key_word);
    template <typename T>
    ERROR_STATUS GetData(std::vector<T>& para, const std::string& key_word);
    template <typename T>
    ERROR_STATUS GetData(T& para, const std::string& key_word);
};
#endif //TEST_H_
