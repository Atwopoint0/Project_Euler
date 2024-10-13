program solution_9
    # Find a Pythagorean triplet a^2 + b^2 = c^2 such that a + b + c = 1000
    # Note that all triplets are generated as follows for integers m, n:
    # a = m^2 - n^2, b = 2mn, c = m^2 + n^2
    # Hence, a + b + c = 2m(m + n) = 1000, implies n = (500 / m - m)
    implicit none
    integer, parameter :: num = 1000 / 2
    integer :: m, n, a, b, c
    
    m = 2
    do while (m*m <= num)
        if (mod(num, m) == 0 .and. m > 500 / m - m) then
            n = 500 / m - m
            exit
        end if    
        m = m + 1
    end do
    a = m**2 - n**2
    b = 2*m*n
    c = m**2 + n** 2
    write(*,*) "The pythagorean triplet:"
    write(*,*) a, b, c
    write(*,*) "Has product:"
    write(*,*) a*b*c
end program solution_9