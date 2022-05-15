create table ASSEMBLER
(
    USER_NAME VARCHAR2(20) not null
        constraint ASSEMBLER_PK
            primary key
        constraint ASSEMBLER_GENERAL_USER_FK
            references GENERAL_USER
)