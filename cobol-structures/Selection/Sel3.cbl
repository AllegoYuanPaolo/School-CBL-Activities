       IDENTIFICATION DIVISION.
       PROGRAM-ID. SEL3.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 num PIC 9(3).
       PROCEDURE DIVISION. 
           DISPLAY "Enter number: "
           ACCEPT num

               display "________________________"
               if function mod(num, 2) = 0 
                   display "Your number is even"
               else 
                   display "Your number is odd"
       STOP RUN. 
           