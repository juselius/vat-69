program vat69
    use brew_m
    use barrel_class
    implicit none

    integer :: nbottles
    type(barrel_t) :: vat

    nbottles = brew_beer(100.0, 0.5, 500.0)

    call vat%init(119.24)
    call vat%distil(2, 52.0)


    print *, "22 bottles of beer and vat 69.", vat%get_no()
end program

