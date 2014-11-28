module brew_m
    use iso_c_binding
    implicit none

    interface
        function brew_beer(barley, hops, water) result(r) bind(c)
            import
            real(C_FLOAT), value :: barley, hops, water
            integer(C_INT) :: r
        end function
    end interface
end module
