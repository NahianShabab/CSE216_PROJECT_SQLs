create table NOTIFICATION
(
    NOTIFICATION_ID NUMBER generated always as identity
        constraint NOTIFICATION_PK
        primary key,
    USER_NAME       VARCHAR2(20)     not null
        constraint NOTIFICATION_USER_FK
            references GENERAL_USER,
    TEXT            VARCHAR2(200)    not null,
    SEEN            NUMBER default 0 not null
        constraint NOTIFICATION_SEEN_CHK
            check (SEEN = 0 OR SEEN = 1),
    TIME            NUMBER           not null,
    TYPE            VARCHAR2(20)     not null
        constraint NOTIFICATION_TYPE_CHK
            check (TYPE IN ('ORDER', 'COMMENT'))
)