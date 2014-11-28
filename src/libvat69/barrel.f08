module barrel_class
    implicit none

    type, public :: barrel_t
        private
        real :: vat_no
        real :: vol
        real :: strength
    contains
        procedure :: init => barrel_init
        procedure :: del => barrel_del
        procedure :: get_no
        procedure :: get_vol
        procedure :: get_strength
        procedure :: distil
    end type

    private
contains
    subroutine barrel_init(this, vol)
        real, intent(in) :: vol
        class(barrel_t), intent(out) :: this
    end subroutine

    subroutine barrel_del(this)
        class(barrel_t), intent(out) :: this
    end subroutine

    function get_no(this) result(r)
        class(barrel_t), intent(in) :: this
        real :: r
        r = this%vat_no
    end function

    function get_vol(this) result(r)
        class(barrel_t), intent(in) :: this
        real :: r
        r = this%vol
    end function

    function get_strength(this) result(r)
        class(barrel_t), intent(in) :: this
        real :: r
        r = this%strength
    end function

    subroutine distil(this, nbarrels, strength)
        class(barrel_t), intent(inout) :: this
        integer, intent(in) :: nbarrels
        real, intent(in) :: strength
    end subroutine

end module
