program solution_1
    # Find the sum of the multiples of 3 or 5 below 1000.
    implicit none
    integer :: i 
    integer :: sum = 0
    integer, parameter :: n = 1000
    do i = 0, n - 1
        if ((mod(i, 3) == 0) .or. (mod(i, 5) == 0)) then
            sum = sum + i
        end if
    end do
    write(*,*) "The sum of the multiples of 3 or 5 below 1000 is:"
    write(*,*) sum
end program solution_1