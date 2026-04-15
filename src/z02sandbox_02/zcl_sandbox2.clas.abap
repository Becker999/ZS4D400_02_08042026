CLASS zcl_sandbox2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_SANDBOX2 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

   DATA connection TYPE REF TO lcl_connection.
   DATA connections TYPE TABLE of Ref to lcl_connection.

   connection = NEW lcl_connection(  ).
    connection->carrier_id = 'LH'.
    connection->connection_id = '0400'.
AppEND connection to connections.

 connection = NEW lcl_connection(  ).
    connection->carrier_id = 'QL'.
    connection->connection_id = '0200'.
AppEND connection to connections.

out->write( connections ).

  ENDMETHOD.



ENDCLASS.
