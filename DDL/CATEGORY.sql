create table CATEGORY
(
    CATEGORY_ID   NUMBER generated as identity
        constraint CATEGORY_PK
            primary key,
    CATEGORY_NAME VARCHAR2(100) not null
        constraint CATEGORY_NAME_UNIQUE
            unique,
    DESCRIPTION   VARCHAR2(500)
)
