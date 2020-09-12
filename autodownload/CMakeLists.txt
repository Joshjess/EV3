cmake_minimum_required(VERSION 3.17.2)
include(FetchContent)
project(downloadasset)
set(CMAKE_CXX_STANDARD 14)
FetchContent_Declare(cpr GIT_REPOSITORY https://github.com/whoshuu/cpr.git GIT_TAG c8d33915dbd88ad6c92b258869b03aba06587ff9) # the commit hash for 1.5.0
FetchContent_MakeAvailable(cpr)
FetchContent_Declare(json
        GIT_REPOSITORY https://github.com/ArthurSonzogni/nlohmann_json_cmake_fetchcontent
        GIT_TAG v3.9.1)

FetchContent_GetProperties(json)
if(NOT json_POPULATED)
    FetchContent_Populate(json)
    add_subdirectory(${json_SOURCE_DIR} ${json_BINARY_DIR} EXCLUDE_FROM_ALL)
endif()

add_executable(downloadasset main.cpp)
target_link_libraries(downloadasset PRIVATE cpr::cpr)
target_link_libraries(downloadasset PRIVATE nlohmann_json::nlohmann_json)
