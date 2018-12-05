          PGM      PARM(&YEAR &MONTH &TRANS)                                      
                                                                                  
          DCL VAR(&YEAR) TYPE(*CHAR) LEN(4)                                       
          DCL VAR(&MONTH) TYPE(*CHAR) LEN(2)                                      
          DCL VAR(&TRANS) TYPE(*CHAR) LEN(4)                                      
                                                                                  
          DCL VAR(&TRAN) TYPE(*CHAR) LEN(6)                                       
          CHGVAR VAR(&TRAN) VALUE('''' *CAT &TRANS *CAT '''')                     
                                                                                  
             STRQMQRY   QMQRY(CSCPC/BALERR1) OUTPUT(*OUTFILE) +                   
                          OUTFILE(ISHAN/BALERR) OUTMBR(*FIRST +                   
                          *REPLACE) SETVAR((YEAR &YEAR) +                         
                                   (MONTH &MONTH))                                
                                                                                  
             STRQMQRY   QMQRY(CSCPC/BALERR2) OUTPUT(*OUTFILE) +                   
                          OUTFILE(ISHAN/B522) OUTMBR(*FIRST +                     
                          *REPLACE) SETVAR((YEAR &YEAR) +                         
                          (MONTH &MONTH) (TRAN &TRAN))                            
                                                                                
             STRQMQRY   QMQRY(CSCPC/BALERR3) OUTPUT(*OUTFILE) +                 
                          OUTFILE(ISHAN/B522) OUTMBR(*FIRST +                   
                          *ADD) SETVAR((YEAR &YEAR) +                           
                          (MONTH &MONTH) (TRAN &TRAN))                          
                                                                                
             STRQMQRY   QMQRY(CSCPC/BALERR4) OUTPUT(*OUTFILE) +                 
                          OUTFILE(ISHAN/B522A) OUTMBR(*FIRST +                  
                          *REPLACE)                                             
                                                                                
             STRQMQRY   QMQRY(CSCPC/BALERR5) OUTPUT(*OUTFILE) +                 
                          OUTFILE(ISHAN/B522_A) OUTMBR(*FIRST +                 
                          *REPLACE)                                             
                                                                                
             STRQMQRY   QMQRY(CSCPC/BALERR5_1) OUTPUT(*OUTFILE) +               
                          OUTFILE(ISHAN/B522A) OUTMBR(*FIRST +                  
                          *ADD)                                                 
                                                                                
             STRQMQRY   QMQRY(CSCPC/BALERR6) OUTPUT(*OUTFILE) +                 
                          OUTFILE(ISHAN/B522B) OUTMBR(*FIRST +                  
                          *REPLACE)                                             
                                                                        
             STRQMQRY   QMQRY(CSCPC/BALERR7) OUTPUT(*OUTFILE) +         
                          OUTFILE(ISHAN/B522C) OUTMBR(*FIRST +          
                          *REPLACE)                                     
                                                                        
             SNDPGMMSG  MSG('PLEASE DOWNLOAD ISHAN/B522C FILE')         
                                                                        
           ENDPGM                                                       