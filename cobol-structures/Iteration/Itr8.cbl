       identification division.
       program-id. Itr8.

       environment division.
       
       data division.
           working-storage section.
           01 num pic 9(3).

           01 a pic 9(3) value 0.
           01 b pic 9(3) value 1.

           01 i pic 9(3) value 2.
           
           01 nT pic 9(3).
           
           01 dispTerm PIC ZZ9.
       procedure division.
           display "Enter number: " with no advancing
           accept num

               if num <= 0
                   display "Cannot proceed"
                   exit program 
               end-if.

               display a
               display b

               if num = 2
                   display "2"
                   exit program
               end-if.    
           
           perform until i = num
               compute nT = a + b
               move b to a
               move nT to b
               display nT

               add 1 to i
           end-perform.

       stop run.
           