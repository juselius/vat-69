add_subdirectory(libvat69)

set(CMAKE_Fortran_MODULE_DIRECTORY ${PROJECT_BINARY_DIR}/include/fortran)

include_directories(libvat69)
include_directories(${CMAKE_Fortran_MODULE_DIRECTORY})

add_executable(vat69.bin main.f90)
target_link_libraries(vat69.bin vat69)

install(TARGETS vat69.bin
    RUNTIME DESTINATION bin
    )
