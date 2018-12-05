SELECT RDOCNUM, TRANNO, SACSCODE, SACSTYP,       
      BATCACTYR, BATCACTMN, BATCTRCDE, BATCBATCH,
      ORIGAMT * (-1) AS ORIGAMT, ACCTAMT, GLSIGN 
      FROM ISHAN/B522                            
      WHERE GLSIGN = '-'                         