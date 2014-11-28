program vat69
    use brew_m
    use barrel_class
    implicit none

    integer :: i, nbottles
    real :: fac
    type(barrel_t) :: vat

    call vat%init(69.0)

    do i=1, 10
        call vat%distil(820.0 * i)
        fac = 0.1 * i
        nbottles = brew_beer(2.0*fac, 0.45*fac, 8.4*fac)
        print '(x,i2,a,i2,a)', nbottles, " bottles of beer and ", &
            vat%get_nvats(), " vats of whiskey..."
    end do
    print *, "... and two dunken sailors."
end program

