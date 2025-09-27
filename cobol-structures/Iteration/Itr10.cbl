       IDENTIFICATION DIVISION.
       PROGRAM-ID. DecimalToBinary.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 deci pic 9(3).
           01 bi pic x(32) value spaces.
           01 i pic 9(16).
           01 remain pic 9(1).
           01 dispBi pic X(32).

           01 revCtr pic 9(3).

           01 revBi pic x(32).

           01 pos pic 9(32) value 1.
       procedure division.
       
     
           display "Decimal: " with no advancing
           accept deci
           display " "

               
                    
               if deci = 0
                   display "Binary: 0"
                    exit program        
               else 
                   perform until deci = 0
                     divide deci by 2 giving deci remainder remain 
                       move remain to bi(pos:1) *> bi = bi + rem
                       
                       add 1 to pos giving pos
                   end-perform
                end-if.
                   
                  

                   perform until pos = 0
                       move bi(pos:1) to revBi(revCtr:1)
                       subtract 1 from pos
                       add 1 to revCtr
                   end-perform

                   display "Binary: " revBi
       stop run.
