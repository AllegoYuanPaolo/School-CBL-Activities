       IDENTIFICATION DIVISION.
       PROGRAM-ID. Seq2.

       ENVIRONMENT DIVISION.
       
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           
           01 Num1 pic 9(2).
           01 Num2 pic 9(2).

           01 answers.
               02 sumAns pic 9(4). 
               02 diffAns pic S9(4). 
               02 prodAns pic 9(4). 
               02 quoAns pic 9(4)v99 comp-3. 
           
           01 DisplayAnswers.
               02 sumDisp pic ZZZ9 . 
               02 diffDisp pic +ZZZ9 . 
               02 prodDisp pic ZZZ9 . 
               02 quoDisp pic ZZZZ.ZZ .
           

           
       PROCEDURE DIVISION.
           
           Display "Enter num1: " with no advancing.
           accept Num1.

           Display "Enter num2: " with no advancing.
           accept Num2.


           compute sumAns of answers= num1 + num2.
           compute diffAns of answers= num1 - num2.
           compute prodAns of answers = num1 * num2.
           compute quoAns of answers = num1 / num2.
           
           move sumAns to sumDisp.
           move diffAns to diffDisp.
           move prodAns to prodDisp.
           move quoAns to quoDisp.

        Display "Sum: " sumDisp " | Diff: " diffDisp.
        Display "Prod: " prodDisp " | Quo: " quoDisp.
           
           
                

       STOP RUN.
