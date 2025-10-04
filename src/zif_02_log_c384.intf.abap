INTERFACE zif_02_log_c384
  PUBLIC .

  TYPES: BEGIN OF ty_cust_name,
           first_name TYPE string,
           last_name  TYPE string,
         END OF ty_cust_name.

 METHODS:
   get_customer
     IMPORTING
       iv_customer_id type string
     RETURNING VALUE(rs_name) type ty_cust_name.

ENDINTERFACE.
