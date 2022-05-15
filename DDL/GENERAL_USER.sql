create table GENERAL_USER
(
    USER_NAME           VARCHAR2(20)     not null
        constraint GENERAL_USER_PK
            primary key,
    PASSWORD            VARCHAR2(128)    not null,
    EMAIL               VARCHAR2(320)    not null
        unique,
    ADDRESS_DESCRIPTION VARCHAR2(500),
    FIRST_NAME          VARCHAR2(15)     not null,
    LAST_NAME           VARCHAR2(15)     not null,
    PHONE_NUMBER        VARCHAR2(20),
    USER_ROLE           VARCHAR2(15)     not null
        constraint GENERAL_USER_USER_ROLE_CHK
            check (USER_ROLE IN ('CLIENT', 'ADMIN', 'DELIVERY_MAN', 'ASSEMBLER')),
    HAS_ACCOUNT         NUMBER default 1 not null
        constraint GENERAL_USER_HAS_ACCOUNT_CHK
            check (HAS_ACCOUNT = 0 OR HAS_ACCOUNT = 1),
    ACCOUNT_CREATE_DATE NUMBER default 0 not null
)