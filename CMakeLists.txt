cmake_minimum_required(VERSION 2.8)

project(VAT69) 
enable_language(C Fortran)

option(ENABLE_OPENMP "Enable OpenMP parallelization" OFF)

if (ENABLE_OPENMP)
    find_package(OpenMP)
    if (OPENMP_FOUND)
        set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
        set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} ${OpenMP_C_FLAGS}")
    endif()
endif ()

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY
    ${CMAKE_BINARY_DIR}/bin
    )
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY
    ${CMAKE_BINARY_DIR}/lib
    )

add_subdirectory(src)
