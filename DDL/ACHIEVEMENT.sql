create table ACHIEVEMENT
(
    TITLE         VARCHAR2(30) not null
        primary key,
    SUMMARY       VARCHAR2(50) not null,
    REWARD_POINTS NUMBER       not null
        check (REWARD_POINTS > 0),
        
    TOTAL_STEPS   NUMBER       not null
        check (TOTAL_STEPS > 0)
)