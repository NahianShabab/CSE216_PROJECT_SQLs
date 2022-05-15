create table CLIENT_CART
(
    CLIENT_NAME VARCHAR2(20) not null
        constraint CLIENT_CART_CLIENT_FK
            references CLIENT,
    ITEM_ID     NUMBER       not null
        constraint CLIENT_CART_ITEM_FK
            references ITEM,
    QUANTITY    NUMBER       not null,
    constraint CLIENT_CART_PK
        primary key (CLIENT_NAME, ITEM_ID)
)