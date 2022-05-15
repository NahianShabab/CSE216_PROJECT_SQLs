create table OFFER_FREE_PRODUCTS
(
    OFFER_ID   NUMBER not null
        constraint OFFER_FREE_PRODUCTS_OFFER_FK
            references OFFER,
    PRODUCT_ID NUMBER not null
        constraint OFFER_FREE_PRODUCTS_PRODUCT_FK
            references PRODUCT,
    COUNT      NUMBER not null
        constraint OFFER_FREE_PRODUCTS_COUNT_CHK
            check (COUNT > 0),
    constraint OFFER_FREE_PRODUCTS_PK
        primary key (OFFER_ID, PRODUCT_ID)
)