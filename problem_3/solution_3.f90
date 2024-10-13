program solution_3
    # Find the largest prime divisor of a large number.
    implicit none
    integer(kind = 8), parameter :: n = 600851475143
    integer(kind = 8) :: i, num, divisor
    num = n
    i = 2
    do while (i * i <= num)
        do while (mod(num, i) == 0)
            num = num / i
        end do
        divisor = i
        i = i + 1
    end do
    if (num > 1) then
        divisor = num
    end if
    write(*,*) n
    write(*,*) "The largest prime divisor is:"
    write(*,*) divisor
end program solution_3