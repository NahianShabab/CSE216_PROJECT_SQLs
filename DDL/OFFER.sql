create table PRODUCT
(
    ITEM_ID              NUMBER           not null
        constraint PRODUCT_PK
            primary key
        constraint PRODUCT_ITEM_FK
            references ITEM,
    STOCK                NUMBER default 0 not null
        constraint PRODUCT_STOCK_CHK
            check (STOCK >= 0),
    DISCOUNT             NUMBER
        constraint PRODUCT_DISCOUNT_CHK
            check (DISCOUNT >= 0 AND DISCOUNT <= 100),
    DISCOUNT_EXPIRE_DATE NUMBER,
    CATEGORY             NUMBER           not null
        constraint PRODUCT_CATEGORY_FK
            references CATEGORY,
    MANUFACTURER         NUMBER           not null
        constraint PRODUCT_MANUFACTURER_FK
            references MANUFACTURER
)