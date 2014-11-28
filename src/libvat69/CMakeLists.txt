set(CMAKE_Fortran_MODULE_DIRECTORY ${PROJECT_BINARY_DIR}/include/fortran)

add_library(vat69 SHARED
    barrel.f90
    bottle.f90
    bottle.h
    brew.c
    brew.f90
    brew.h
    )

install(TARGETS vat69
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
    )
