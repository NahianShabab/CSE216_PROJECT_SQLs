create table COUNTRY
(
    COUNTRY_ID   NUMBER generated always as identity
        constraint COUNTRY_PK
            primary key,
    COUNTRY_NAME VARCHAR2(30) not null
        unique
)
