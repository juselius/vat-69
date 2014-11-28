add_library(vat69 SHARED
    barrel.f08
    bottle.f90
    bottle.h
    brew.c
    brew.f90
    brew.h
    )

install(TARGET vat69
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
    )
