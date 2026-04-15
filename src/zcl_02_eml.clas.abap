CLASS zcl_02_eml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_eml IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA agencies_upd TYPE Table FOR UPDATE  /DMO/I_AgencyTP.

  agencies_upd = VALUE #( ( agencyid = '700002' name = 'Fly 2 High ' ) ).

  MODIFY ENTITIES OF /dmo/i_agencytp
  ENTITY /DMO/Agency
  UPDATE
  FIELDS ( Name )
  WITH agencies_upd.

COMMIT ENTITIES.

  out->write( 'TEST 17' ).

  ENDMETHOD.
ENDCLASS.
