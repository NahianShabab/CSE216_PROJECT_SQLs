create table CLIENT
(
    USER_NAME     VARCHAR2(20)     not null
        constraint CLIENT_PK
            primary key
        constraint CLIENT_GENERAL_USER_FK
            references GENERAL_USER,
    REWARD_POINTS NUMBER default 0 not null
        check (REWARD_POINTS >= 0)
)