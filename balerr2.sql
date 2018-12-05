SELECT RDOCNUM , TRANNO, SACSCODE, SACSTYP,                 
      BATCACTYR, BATCACTMN, BATCTRCDE, BATCBATCH,           
      ORIGAMT, ACCTAMT, GLSIGN FROM LA7DTA/ACMVPF           
      WHERE BATCCOY = '2'AND BATCBRN ='10' AND              
      BATCACTYR =  &YEAR  AND BATCACTMN =                   
       &MONTH  AND BATCTRCDE=  &TRAN                        
                    AND BATCBATCH IN (SELECT BATCBATCH FROM 
       ISHAN/BALERR WHERE BATCTRCDE = &TRAN )               
       AND SACSTYP NOT IN ('IB','RV','GX')                  