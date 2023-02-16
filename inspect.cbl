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
       01 WS-DATA                        PIC X(10) VALUE SPACES.
       77 WS-TOTAL                       PIC 9(02).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            MOVE '12'                    TO WS-DATA(01:02).
            MOVE '/'                     TO WS-DATA(03:01).
            MOVE'03'                     TO WS-DATA(04:02).
            MOVE'/'                      TO WS-DATA(06:01).
            MOVE '2023'                  TO WS-DATA(07:04).

            DISPLAY WS-DATA.

            INSPECT WS-DATA TALLYING WS-TOTAL FOR ALL '3'
            BEFORE INITIAL '2023'.

            DISPLAY WS-TOTAL.

            INSPECT WS-DATA REPLACING ALL '/' BY '-' AFTER '12'.

            DISPLAY WS-DATA.

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
