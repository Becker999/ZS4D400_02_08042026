CLASS zcl_02_compute DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_compute IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DaTA number1 TYPE P lENGTH 8 dECIMALS 2.
  DATA number2 TyPE P lENGTH 8 dECIMALS 2.
  DATA number3 TyPE P lENGTH 8 dECIMALS 2.

  number1 = -8.
  number2 = 3.

 number3 = number1 / number2.
*  Data(result) = number1 / number2.
Data(Output) = | { number1 } / { number2 } = { number3 }|.

out->write( Output ).

  ENDMETHOD.
ENDCLASS.
