add_subdirectory(libvat69)

add_executable(vat69.bin main.f90)
target_link_libraries(vat69)

install(TARGET vat69.bin
    RUNTIME DESTINATION bin
    )
