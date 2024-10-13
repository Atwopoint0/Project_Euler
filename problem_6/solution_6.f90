program solution_6
    # Find the difference between the the sum of the squares and the square of the sum.
    # Square of the sum formula is (n(n+1))^2/4
    # Sum of squares formula is n(n+1)(2n+1)/6
    # Simplifies to n(n+1)(3n+2)(n-1)/12
    integer, parameter :: n = 100
    integer :: ans
    ans = n * (n + 1) * (3*n + 2) * (n - 1) / 12
    write(*,*) "The difference between the square of the sum"
    write(*,*) "and the sum of the squares from 1 to 100 is:"
    write(*,*) ans
end program solution_6