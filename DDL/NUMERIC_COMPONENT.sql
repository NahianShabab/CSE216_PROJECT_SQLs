create table NUMERIC_COMPONENT
(
    TITLE   VARCHAR2(30) not null
        constraint NUMERIC_COMPONENT_PK
            primary key,
    DETAILS VARCHAR2(200),
    UNIT    VARCHAR2(20) not null
)