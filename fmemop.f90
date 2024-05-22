program fmemop
    use iso_c_binding, only : c_loc, c_size_t, c_associated, c_null_ptr, c_sizeof
    use mod_c_memcpy
    use mod_c_memset
    implicit none

    !---- program demostarte memcpy
    integer, parameter :: n = 65536
    real(8), target :: loop_arr(n)
    real(8), target :: set_arr(n)
    
    call fapp_start("loop_arr", 1, 0)
    loop_arr(:) = 0.0
    call fapp_stop("loop_arr", 1, 0)
    
    call fapp_start("set_arr", 2, 0)
    call c_memset(c_loc(set_arr), 0, n * c_sizeof(set_arr(1)))
    call fapp_stop("set_arr", 2, 0)

    ! print *, "After calling c memset:"
    ! do i=1, n
    !     do j=1, n
    !         print *, set_arr(i, j)
    !     end do
    ! end do

    ! call c_memcpy(c_loc(dest_arr(1,1)), c_loc(src_arr), n * c_sizeof(src_arr(1)))

    ! print *, "After calling c memcpy:"
    ! do i=1, n
    !     print *, dest_arr(i, 1)
    ! end do

end program fmemop
