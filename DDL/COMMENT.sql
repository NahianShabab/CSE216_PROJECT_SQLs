create table "COMMENT"
(
    COMMENT_ID         NUMBER generated as identity
        constraint COMMENT_PK
            primary key,
    COMMENT_DATE       NUMBER        not null,
    TEXT               VARCHAR2(500) not null,
    COMMENTOR          VARCHAR2(20)  not null
        constraint COMMENT_CLIENT_FK
            references CLIENT,
    COMMENT_PRODUCT_ID NUMBER        not null
        constraint COMMENT_PRODUCT_FK
            references PRODUCT,
    PARENT_COMMENT     NUMBER
        constraint COMMENT_PARENT_FK
            references "COMMENT"
                on delete cascade
)