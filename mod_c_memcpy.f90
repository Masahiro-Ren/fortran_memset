module mod_c_memcpy
    use iso_c_binding, only: c_ptr, c_size_t
    implicit none

    interface 
        subroutine c_memcpy(dest, src, num) bind(C, name="memcpy")
           import c_ptr, c_size_t
           type(c_ptr), value :: dest
           type(c_ptr), value :: src
           integer(c_size_t), value :: num 
        end subroutine c_memcpy
    end interface
end module mod_c_memcpy
