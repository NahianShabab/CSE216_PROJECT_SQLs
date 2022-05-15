create table PRODUCT_CONTAINS
(
    PARENT_PRODUCT NUMBER not null
        constraint PRODUCT_CONTAINS_PARENT_PRODUCT_FK
            references PRODUCT,
    CHILD_PRODUCT  NUMBER not null
        constraint PRODUCT_CONTAINS_CHILD_PRODUCT_FK
            references PRODUCT,
    constraint PRODUCT_CONTAINS_PK
        primary key (PARENT_PRODUCT, CHILD_PRODUCT)
)