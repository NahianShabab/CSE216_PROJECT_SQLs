create table PROD_GEN_COMPONENT
(
    PRODUCT_ID      NUMBER        not null
        constraint PROD_GEN_COMPONENT_PROD_FK
            references PRODUCT,
    COMPONENT_TITLE VARCHAR2(30)  not null
        constraint PROD_GEN_COMPONENT_GEN_COMP_FK
            references DESCRIPT_COMPONENT
                on delete cascade,
    SPECIFICATION   VARCHAR2(100) not null,
    constraint PROD_GEN_COMPONENT_PK
        primary key (PRODUCT_ID, COMPONENT_TITLE)
)

