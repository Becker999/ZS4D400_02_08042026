*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations

CLASS lcl_connection DEFINITION.

  PUBLIC SECTION.

    DATA carrier_id    TYPE /dmo/carrier_id.
    DATA connection_id TYPE /dmo/connection_id.

    CLASS-DATA conn_counter TYPE i.

    METHODS set_attributes IMPORTING
             i_carrier_id    TYPE /dmo/carrier_id
           i_connection_id TYPE /dmo/connection_id
           RaISING CX_ABAP_INVALID_VALUE.



    MeTHODS get_output RETURNING VALUE(r_output) TYPE string_table.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS lcl_connection IMPLEMENTATION.

METHOD get_output.

AppEND |Carrier:    { carrier_id    }| to r_output.
AppEND |Connection: { connection_id }| to r_output.

EndMeTHOD.



  METHOD set_attributes.
If i_carrier_id is InITIAL or i_connection_id is InITIAL.
RAISE EXCEPTION TYPE CX_ABAP_INVALID_VALUE.
EndIf.

carrier_id    = i_carrier_id.
connection_id = i_connection_id.

EndMeTHOD.




ENDCLASS.
