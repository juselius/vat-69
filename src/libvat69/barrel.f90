module barrel_class
    implicit none

    type, public :: barrel_t
        private
        integer :: nvats
        real :: vol
        real :: strength
        real, dimension(:,:), allocatable :: vat
    contains
        procedure :: init => barrel_init
        procedure :: del => barrel_del
        procedure :: get_nvats
        procedure :: get_vol
        procedure :: get_strength
        procedure :: distil
    end type

    private
contains
    subroutine barrel_init(this, strength)
        real, intent(in) :: strength
        class(barrel_t), intent(out) :: this
        this%vol = 119.2
        this%strength = strength
    end subroutine

    subroutine barrel_del(this)
        class(barrel_t), intent(out) :: this
        if (allocated(this%vat)) deallocate(this%vat)
    end subroutine

    function get_nvats(this) result(n)
        class(barrel_t), intent(in) :: this
        integer :: n
        n = this%nvats
    end function

    function get_vol(this) result(v)
        class(barrel_t), intent(in) :: this
        real :: v
        v = this%vol
    end function

    function get_strength(this) result(s)
        class(barrel_t), intent(in) :: this
        real :: s
        s = this%strength
    end function

    subroutine distil(this, volume)
        class(barrel_t), intent(inout) :: this
        real, intent(in) :: volume

        if (allocated(this%vat)) deallocate(this%vat)
        this%nvats = ceiling(volume/this%vol)

        allocate(this%vat(this%nvats, this%nvats))
    end subroutine

end module
