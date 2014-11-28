module bottle_m
    use iso_c_binding
    implicit none
contains
    subroutine bottle(beer, nbottles, bottles) bind(c)
        real(C_FLOAT), value :: beer
        integer(C_INT), value :: nbottles
        type(C_PTR), value :: bottles
        integer(C_INT), dimension(:), pointer :: fbottles
        integer :: i, k, n

        call c_f_pointer(bottles, fbottles, (/nbottles/))

        n = floor(beer/0.33)

!$OMP PARALLEL DO
        do i = 1, n
            k = i
            if (i > nbottles) then
                stop "Catastrophy: overspill"
            end if
            fbottles(k) = 1
        end do
!$OMP END PARALLEL DO
    end subroutine
end module
