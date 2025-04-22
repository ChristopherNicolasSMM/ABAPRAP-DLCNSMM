CLASS zcl_cdt_products DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS: set_products,
      set_certificates,
      detele_all.
ENDCLASS.



CLASS zcl_cdt_products IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    out->write( 'Iniciando a execução' ).
    "me->detele_all( ).
    me->set_products( ).
    "me->set_certificates(  ).
    out->write( 'Encerramento da execução' ).

  ENDMETHOD.
  METHOD set_products.

    TYPES: tt_products TYPE TABLE OF zcnsmm_product WITH DEFAULT KEY.

    DELETE FROM zcnsmm_product.

    DATA(lt_products) = VALUE tt_products(
    ( matnr = '000000000000000001' description = 'Celular' language = 'P' )
    ( matnr = '000000000000000002' description = 'Televisor' language = 'P' )
    ( matnr = '000000000000000003' description = 'Computador' language = 'P' )

    ( matnr = '000000000000000001' description = 'Phone' language = 'E' )
    ( matnr = '000000000000000002' description = 'Television' language = 'E' )
    ( matnr = '000000000000000003' description = 'Cumputer' language = 'E' )
    ).

    MODIFY zcnsmm_product FROM TABLE @lt_products.

  ENDMETHOD.

  METHOD set_certificates.
    TYPES: tt_certif TYPE TABLE OF zcnsmm_certif WITH DEFAULT KEY.
    TYPES: tt_certif_st TYPE TABLE OF zcnsmm_certif_st WITH DEFAULT KEY.

    DELETE FROM zcnsmm_certif.

    DATA(lt_certif) = VALUE tt_certif(
    ( cert_uuid = '1' matnr = '000000000000000001'  )
    ( cert_uuid = '2' matnr = '000000000000000002'  )
    ( cert_uuid = '3' matnr = '000000000000000003'  )
    ).

    MODIFY zcnsmm_certif FROM TABLE @lt_certif.

    DELETE FROM zcnsmm_certif_st.
    DATA(lt_certif_st) = VALUE tt_certif_st(
    ( state_uuid = '1' cert_uuid = '1' matnr = '000000000000000001'  )
    ( state_uuid = '2' cert_uuid = '2' matnr = '000000000000000002'  )
    ( state_uuid = '3' cert_uuid = '3' matnr = '000000000000000003'  )
    ( state_uuid = '4' cert_uuid = '3' matnr = '000000000000000003'  )
    ).
    MODIFY zcnsmm_certif_st FROM TABLE @lt_certif_st.

  ENDMETHOD.

  METHOD detele_all.
    DELETE FROM zcnsmm_product.
    DELETE FROM zcnsmm_certif.
    DELETE FROM zcnsmm_certif_st.
  ENDMETHOD.

ENDCLASS.
