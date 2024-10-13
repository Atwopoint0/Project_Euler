program solution_8
    # Find the m adjacent digits in an n-digit number which have the greatest product.    
    implicit none
    integer, parameter :: n = 1000, m = 13
    integer :: num(n)
    integer :: i, j, zero
    integer(kind = 8) :: prod, max
    integer :: io
    logical :: is_zero
    open(newunit = io, file = "number.txt", status = "old", action = "read")
    read(io, "(*(i1))") num
    close(io)
    
    zero = 0
    prod = 1
    max = 0
    i = 1
    do while (i <= n - m + 1)
        
        # Compute the product
        prod = 1
        do j = i, i + m - 1
            prod = prod * num(j)
        end do
        
        if (prod > max) then
            max = prod
        end if
        i = i + 1
        
        # Logic to jump after any zero digit
        is_zero  = .true.
        do while (is_zero == .true. .and. i <= n - m + 1)
            do j = i, i + m - 1
                if (num(j) == 0) then
                    i = j + 1
                    is_zero = .true.
                    exit
                end if
                is_zero = .false.
            end do
        end do
    end do
    print*, "The maximum product formed from 13 adjacent digits is:"
    print*, max
    
end program solution_8