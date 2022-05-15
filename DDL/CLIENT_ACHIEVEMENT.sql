create table CLIENT_ACHIEVEMENT
(
    TITLE          VARCHAR2(30)     not null
        references ACHIEVEMENT,
    CLIENT_NAME    VARCHAR2(20)     not null
        references CLIENT,
    CLAIMED        NUMBER default 0 not null
        check (CLAIMED = 1 OR CLAIMED = 0),
    ACQUIRED_STEPS NUMBER default 0 not null,
    primary key (TITLE, CLIENT_NAME)
)