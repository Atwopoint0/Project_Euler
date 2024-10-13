function lcm(p, q) result(m)
    # Euclidean algorithm
    integer(kind = 8), intent(in) :: p, q
    integer(kind = 8) :: a, b, temp, m
    a = p
    b = q
    do while (b > 0)
        temp = a
        a = b
        b = mod(temp, b)
    end do
    m = p * q / a
    
end function

program solution_5
    # Compute the LCM of all the numbers from 1 to n.
    integer(kind = 8), external :: lcm
    integer, parameter :: n = 20
    integer(kind = 8) :: num
    num = 1
    do i = 1, n
        num = lcm(num, i)
    end do
    write(*,*) "The smallest number that is divisible by numbers 1 to 20 is:" 
    write(*,*) num
end program solution_5