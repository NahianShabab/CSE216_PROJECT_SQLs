create table STOCK_REQUEST
(
    PRODUCT_ID NUMBER not null
        primary key
        references PRODUCT,
    QUANTITY   NUMBER not null
        constraint STOCK_REQUEST_QUANTITY_CHK
            check (QUANTITY > 0)
)