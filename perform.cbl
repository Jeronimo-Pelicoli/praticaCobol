      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.

      * PERFORM P3-INICIO             THRU P3-FIM.
      * PERFORM P2-INICIO             THRU P2-FIM.
      * PERFORM P1-INICIO             THRU P1-FIM.

       PERFORM S2.
       PERFORM S1.
       PERFORM S3.

       S1 SECTION.
       P1-INICIO.
            DISPLAY 'PARAGRAFO 1'.
       P1-FIM.

       P2-INICIO.
            DISPLAY 'PARAGRAFO 2'.
       P2-FIM.

       S2 SECTION.
       P3-INICIO.
            DISPLAY 'PARAGRAFO 3'.
       P3-FIM.

       S3 SECTION.
       P4-INICIO.
           STOP RUN.
       P4-FIM.

       END PROGRAM YOUR-PROGRAM-NAME.
