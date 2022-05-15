
create table DELIVERYMAN
(
    USER_NAME VARCHAR2(20) not null
        constraint DELIVERY_MAN_PK
            primary key
        constraint DELIVERY_MAN_GENERAL_USER_FK
            references GENERAL_USER
)