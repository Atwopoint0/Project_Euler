program solution_2
    # Find the sum of even-valued Fibonacci numbers whose values do not exceed four million.
    implicit none
    integer, parameter :: n = 4000000
    integer :: x_1, x_2, temp, sum, parity
    x_1 = 1
    x_2 = 2
    sum = 0
    parity = 0
    do while (x_2 < n)
        if (parity == 0) then
            sum = sum + x_2
        end if
        temp = x_2
        x_2 = x_2 + x_1
        x_1 = temp
        parity = mod(parity + 1, 3)
    end do
    write(*,*), "The sum of the even-valued Fibonacci numbers, less than four million is:"
    write(*,*), sum
end program solution_2