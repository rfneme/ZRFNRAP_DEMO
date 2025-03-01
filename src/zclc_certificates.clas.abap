CLASS zclc_certificates DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zclc_certificates IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

   types: tt_certif TYPE table of zrfrap_certif WITH DEFAULT KEY.

    delete from zrfrap_certif.

        data(lt_certif) = VALUE tt_certif(
        ( cert_uii = '1' matnr = '1' )
        ( cert_uii = '2' matnr = '2' )
        ( cert_uii = '3' matnr = '3' )
    ).

    MODIFY zrfrap_certif from TABLE @lt_certif.

    out->write( 'Produtos Inseridos' ).

  ENDMETHOD.

ENDCLASS.
