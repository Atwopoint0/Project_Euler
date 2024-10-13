function is_palindrome(num) result(palindrome)
    integer :: num, reverse, temp
    logical :: palindrome
    
    reverse = 0
    temp = num
    do while (temp /= 0)
        reverse = reverse * 10 + mod(temp, 10)
        temp = temp / 10
    end do
    palindrome = (reverse == num)
end function    
    
program solution_4
    # Find the largest palindrome by from a product of two 3-digit numbers.
    # The palindrome is writen as 100000a + 10000b + 1000c + 100c + 10b + a
    # Which simplifies to 100001a + 10010b + 1100c
    # Factor out the prime 11, 11(9091a + 910b + 100c) indicates one of the numbers is divisible by 11
    integer :: i, j, max, max_i, max_j
    logical, external :: is_palindrome
    
    max = 0
    i = 999
    do while (i > 100)
        j = 990
        if (i * j < max) then
            exit
        end if
        do while (j > 100)
            if (i * j > max .and. is_palindrome(i * j)) then
                max = i * j
                max_i = i
                max_j = j
            end if
            j = j - 11
        end do
        i = i - 1
    end do
    write(*,*) "The largest palindrome formed by 3-digit numbers is:"
    write(*,*) max
    write(*,*) "Formed by factors:"
    write(*,*) max_i, max_j
    
end program solution_4
    