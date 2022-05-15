create table "ORDER"
(
    ORDER_ID                 NUMBER  generated always as identity
        constraint ORDER_PK
        primary key,
    TOTAL_PRICE              NUMBER           not null,
    DESTINATION_ADDRESS      VARCHAR2(500)    not null,
    ORDER_DATE               NUMBER           not null,
    DELIVERY_DATE            NUMBER,
    ORDER_STATUS             VARCHAR2(20)
        constraint ORDER_STATUS_CHK
            check (ORDER_STATUS IN ('PLACED', 'PAY_CONFIRMED', 'ASSEMBLED', 'ON_DELIVERY', 'DELIVERED')),
    CURRENT_SUB_DISTRICT     NUMBER
        constraint ORDER_CURRENT_SUB_DISTRICT_FK
            references SUB_DISTRICT,
    DESTINATION_SUB_DISTRICT NUMBER           not null
        constraint ORDER_DEST_SUB_DISTRICT_FK
            references SUB_DISTRICT,
    CLIENT_NAME              VARCHAR2(20)
        constraint ORDER_CLIENT_FK
            references CLIENT,
    ASSEMBLER_NAME           VARCHAR2(20)
        constraint ORDER_ASSEMBLER_FK
            references ASSEMBLER,
    DELIVERMAN_NAME          VARCHAR2(20)
        constraint ORDER_DELIVERYMAN_FK
            references DELIVERYMAN,
    PAYMENT_DATE             NUMBER,
    DELIVERY_COST            NUMBER           not null,
    HAS_REDEEMED             NUMBER default 0 not null
        check (HAS_REDEEMED = 0 OR HAS_REDEEMED = 1)
)