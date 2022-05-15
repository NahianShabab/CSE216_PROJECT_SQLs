create table WISHLIST
(
    CLIENT_NAME VARCHAR2(20) not null
        constraint WISHLIST_CLIENT_FK
            references CLIENT,
    ITEM_ID     NUMBER       not null
        constraint WISHLIST_ITEM_FK
            references ITEM,
    constraint WISHLIST_PK
        primary key (CLIENT_NAME, ITEM_ID)
)