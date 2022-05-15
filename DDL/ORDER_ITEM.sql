create table ORDER_ITEM
(
    ORDER_ID   NUMBER not null
        constraint ORDER_ITEM_ORDER_FK
            references "ORDER"
                on delete cascade,
    ITEM_ID    NUMBER not null
        constraint ORDER_ITEM_ITEM_FK
            references ITEM,
    QUANTITY   NUMBER not null
        constraint ORDER_ITEM_QUANTITY_CHK
            check (QUANTITY > 0),
    UNIT_PRICE NUMBER not null,
    DISCOUNT   NUMBER,
    constraint ORDER_ITEM_PK
        primary key (ORDER_ID, ITEM_ID)
)