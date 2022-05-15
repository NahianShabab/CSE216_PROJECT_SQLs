create table ADMIN
(
    USER_NAME VARCHAR2(20) not null
        constraint ADMIN_PK
            primary key
        constraint ADMIN_GENERAL_USER_FK
            references GENERAL_USER
)