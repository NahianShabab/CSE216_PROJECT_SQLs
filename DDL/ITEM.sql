create table ITEM
(
    ITEM_ID      NUMBER generated always as identity
        constraint ITEM_PK
        primary key,
    TITLE        VARCHAR2(200)    not null
        unique,
    PRICE        NUMBER           not null
        constraint ITEM_PRICE_CHK
            check (PRICE >= 0),
    MAIN_IMAGE   VARCHAR2(210),
    SUMMARY      VARCHAR2(1000),
    IS_FEATURED  NUMBER default 0 not null
        constraint ITEM_IS_FEATURED_CHK
            check (IS_FEATURED = 0 OR IS_FEATURED = 1),
    TYPE         VARCHAR2(10)     not null
        constraint ITEM_TYPE_CHK
            check (TYPE IN ('PRODUCT', 'OFFER')),
    UPDATED_BY   VARCHAR2(20)
        constraint ITEM_UPDATE_BY_ADMIN_FK
            references ADMIN,
    IS_CONTINUED NUMBER default 1 not null
        constraint ITEM_IS_CONTINUED_CHK
            check (IS_CONTINUED = 0 OR IS_CONTINUED = 1),
    UPDATE_DATE  NUMBER default 0 not null
)