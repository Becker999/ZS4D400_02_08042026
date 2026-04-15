CLASS zcl_02_sandbox DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_sandbox IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    CONSTANTS max_count TYPE i VALUE 20.
    DATA Zahlen TYPE TABLE OF i.
    DATA output TYPE TABLE OF string.

    DO max_count TIMES.

      CASE sy-index.
        WHEN 1.
          APPEND 0 TO Zahlen.
        WHEN 2.
          APPEND 1 TO Zahlen.
        WHEN OTHERS.
          APPEND Zahlen[ sy-index - 1 ] + Zahlen[  sy-index - 2 ] TO Zahlen.


      ENDCASE.

    ENDDO.

Data(counter) = 0.

    LOOP AT Zahlen INTO DATA(number).

counter = counter + 1 .

    APPEND |{ counter  WIDTH = 4 } : { number  WIDTH = 10  ALIGN = RIGHT }| TO output.


    ENDLOOP.
    Out->Write( |Die ersten { max_count } der FBZ | ).
    Out->Write( output ).



  ENDMETHOD.
ENDCLASS.
