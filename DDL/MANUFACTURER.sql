create table MANUFACTURER
(
    MANUFACTURER_ID   NUMBER default generated as identity
        constraint MANUFACTURER_PK
        primary key,
    MANUFACTURER_NAME VARCHAR2(100)    not null
        unique,
    DESCRIPTION       VARCHAR2(500),
    MOTTO             VARCHAR2(100),
    LOGO_IMAGE        VARCHAR2(110),
    IS_VALID          NUMBER default 1 not null
        constraint MANUFACTURER_IS_VALID_CHK
            check (IS_VALID = 1 OR IS_VALID = 0)
)