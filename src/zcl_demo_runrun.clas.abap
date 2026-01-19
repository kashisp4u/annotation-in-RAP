CLASS zcl_demo_runrun DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
INTERFACES : if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_demo_runrun IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

TRY.

CALL METHOD cl_numberrange_runtime=>number_get
  EXPORTING
    nr_range_nr       = '01'          " Number range interval number
    object            = 'ZSAM_RNUM'  " Number range object name
    quantity          = '1'           " How many numbers to fetch
*    subobject         = ''            " Optional: subobject if defined
*    toyear            = '0000'        " Optional: year-dependent ranges
    ignore_buffer     = abap_false    " Optional: bypass buffering
  IMPORTING
    number            = DATA(lv_number). " Returned number

  CATCH cx_number_ranges into data(ob_jt).
    "handle exception
ENDTRY.

  ENDMETHOD.

ENDCLASS.
