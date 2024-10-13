program solution_7
    # Compute the first n prime numbers using the sieve.
    integer, parameter :: n = 10001
    integer :: i, j, num
    integer :: primes(n)
    logical :: is_prime
    primes(1) = 2
    i = 1
    num = 3
    do while (i < n)
        is_prime = .true.
        do j = 1, i
            if (mod(num, primes(j)) == 0) then
                num = num + 2
                is_prime = .false.
                exit
            end if
        end do
        if (is_prime == .true.) then
            primes(i + 1) = num
            num = num + 2
            i = i + 1
        end if
    end do
    write(*,*) "The 10001st prime number is:"
    write(*,*) primes(n)
end program solution_7