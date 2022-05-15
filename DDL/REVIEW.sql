create table REVIEW
(
    USER_NAME   VARCHAR2(20) not null
        constraint REVIEW_CLIENT_FK
            references CLIENT,
    PRODUCT_ID  NUMBER       not null
        constraint REVIEW_PRODUCT_FK
            references PRODUCT,
    TITLE       VARCHAR2(200),
    DESCRIPTION VARCHAR2(500),
    RATING      NUMBER       not null
        constraint REVIEW_CHK
            check (RATING >= 0.0 AND RATING <= 5.0),
    REVIEW_DATE NUMBER       not null,
    constraint REVIEW_PK
        primary key (USER_NAME, PRODUCT_ID),
    constraint REVIEW_TITLE_DESC_CHK
        check (TITLE IS NOT NULL OR DESCRIPTION IS NULL)
)
