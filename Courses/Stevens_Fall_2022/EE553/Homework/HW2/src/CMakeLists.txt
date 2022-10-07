project(f_func)

set(HEADER_FILES functionWind.h functionPrime.h)
set(SOURCE_FILES functionWind.cpp functionPrime.cpp)

add_library(f_func ${SOURCE_FILES})
