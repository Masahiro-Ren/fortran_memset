module mod_c_memset
    use iso_c_binding, only: c_ptr, c_int, c_size_t
    implicit none

    interface 
        subroutine c_memset(ptr, val, num) bind(C, name="memset")
            import c_ptr, c_int, c_size_t
            type(c_ptr), value :: ptr
            integer(c_int), value :: val
            integer(c_size_t), value:: num
        end subroutine c_memset
    end interface 
end module mod_c_memset
