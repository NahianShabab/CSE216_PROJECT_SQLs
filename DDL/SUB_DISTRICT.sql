create table SUB_DISTRICT
(
    SUB_DISTRICT_ID    NUMBER default generated always as identity
        constraint SUB_DISTRICT_PK
        primary key,
    SUB_DISTRICT_NAME  VARCHAR2(20)     not null,
    DISTRICT_ID        NUMBER           not null
        constraint SUB_DISTRICT_DISTRICT_FK
            references DISTRICT,
    DELIVERY_SUPPORTED NUMBER default 1 not null
        constraint SUB_DISTRICT_DELIVERY_SUPPORTED_CHK
            check (DELIVERY_SUPPORTED = 0 OR DELIVERY_SUPPORTED = 1)
)