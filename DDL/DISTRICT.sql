create table DISTRICT
(
    DISTRICT_ID   NUMBER generated always as identity
        constraint DISTRICT_PK
            primary key,
    DISTRICT_NAME VARCHAR2(20) not null,
    DELIVERY_COST NUMBER
        constraint DISTRICT_DELIVERY_COST_CHK
            check (DELIVERY_COST >= 0),
    COUNTRY_ID    NUMBER       not null
        constraint DISTRICT_COUNTRY_FK
            references COUNTRY
)
