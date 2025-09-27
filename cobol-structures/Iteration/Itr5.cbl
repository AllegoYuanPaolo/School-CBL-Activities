       identification division.
       program-id. Itr4.

       environment division.

       data division.
           working-storage section.
           01 startNum pic 99.
           01 endNum pic 99.
           01 sumTotal pic 99 value 0.
           01 dispSum pic Z9.
       procedure division.
       
           display "Enter Start: " with no advancing
           accept startNum

           display "Enter End: " with no advancing
           accept endNum
                   
                   if startNum > endNum
                       display "Start number cannot be greater than end"
                       exit program
                   end-if

           perform until startNum >= endNum
                   
                   if function mod(startNum, 1) = 0
                       move startNum to dispSum
                       add startNum to sumTotal
                   end-if
               add 1 to startNum
           end-perform
               move sumTotal to dispSum
                   display "Sum: " dispSum
       stop run.
       