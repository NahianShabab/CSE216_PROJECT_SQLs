create table DESCRIPT_COMPONENT
(
    TITLE   VARCHAR2(30) not null
        constraint DESCRIPT_COMPONENT_PK
            primary key,
    DETAILS VARCHAR2(200)
)