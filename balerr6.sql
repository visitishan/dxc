SELECT RDOCNUM, BATCTRCDE , TRANNO ,                            
       SUM(ORIGAMT),BATCBATCH FROM ISHAN/B522A                  
                           GROUP BY RDOCNUM, BATCTRCDE, TRANNO, 
      BATCBATCH HAVING SUM(ORIGAMT) <> 0                        
        ORDER BY BATCTRCDE                                      