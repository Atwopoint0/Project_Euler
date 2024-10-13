        !COMPILER-GENERATED INTERFACE MODULE: Sun Oct 13 16:20:22 2024
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE IS_PRIME__genmod
          INTERFACE 
            FUNCTION IS_PRIME(NUM) RESULT(PRIME)
              INTEGER(KIND=8), INTENT(IN) :: NUM
              LOGICAL(KIND=4) :: PRIME
            END FUNCTION IS_PRIME
          END INTERFACE 
        END MODULE IS_PRIME__genmod
