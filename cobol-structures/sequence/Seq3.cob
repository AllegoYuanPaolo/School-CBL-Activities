       IDENTIFICATION DIVISION.
       PROGRAM-ID. Seq2.

       ENVIRONMENT DIVISION.
       
       DATA DIVISION.
           WORKING-STORAGE SECTION.

           01 celciusInput pic 9(3).

           01 fahr pic 9(3)v99 comp-3.

           01 DisplayFahr PIC ZZZ.ZZ

       PROCEDURE DIVISION.

           display "Enter Celsius to convert: " with no advancing.
           accept celciusInput.

           compute fahr = (9/5) * celciusInput + 32.

           move fahr to DisplayFahr.

           Display " " .
           Display "Celsius: " celciusInput " | Fahrenheit:  " 
      -     DisplayFahr
           
        
       STOP RUN.
