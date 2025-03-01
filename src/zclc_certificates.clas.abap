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

   types: tt_certif   TYPE table of zrfrap_certif WITH DEFAULT KEY.
   types: tt_certifst TYPE table of zrfrap_certif_st WITH DEFAULT KEY.

    delete from zrfrap_certif.
    delete from zrfrap_certif_st.

    data(lt_certif) = VALUE tt_certif(
        ( cert_uii = '1' matnr = '1' )
        ( cert_uii = '2' matnr = '2' )
        ( cert_uii = '3' matnr = '3' )
    ).

    MODIFY zrfrap_certif from TABLE @lt_certif.

    data(lt_certifst) = VALUE tt_certifst(
        ( state_uuid = '1' cert_uuid = '1' matnr = '1' )
        ( state_uuid = '2' cert_uuid = '2' matnr = '2' )
        ( state_uuid = '3' cert_uuid = '3' matnr = '3' )
        ( state_uuid = '4' cert_uuid = '3' matnr = '3' )
    ).

    MODIFY zrfrap_certif_st from TABLE @lt_certifst.

    out->write( 'Produtos Inseridos' ).

  ENDMETHOD.

ENDCLASS.
