create table PROD_NUM_COMPONENT
(
    PRODUCT_ID      NUMBER       not null
        constraint PROD_NUM_COMPONENT_PROD_FK
            references PRODUCT,
    COMPONENT_TITLE VARCHAR2(30) not null
        constraint PROD_NUM_COMPONENT_NUM_COMP_FK
            references NUMERIC_COMPONENT
                on delete cascade,
    VALUE           NUMBER       not null,
    constraint PROD_NUM_COMPONENT_PK
        primary key (PRODUCT_ID, COMPONENT_TITLE)
)