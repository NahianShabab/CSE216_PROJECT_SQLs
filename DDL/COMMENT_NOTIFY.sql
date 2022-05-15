create table COMMENT_NOTIFY
(
    NOTIFICATION_ID NUMBER not null
        constraint COMMENT_NOTIFY_PK
            primary key
        constraint COMMENT_NOTIFY_NOTIFICATION
            references NOTIFICATION
                on delete cascade,
    PRODUCT_ID      NUMBER
        constraint COMMENT_NOTIFY_PRODUCT_FK
            references PRODUCT
)