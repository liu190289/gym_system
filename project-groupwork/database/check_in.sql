create table check_in
(
    checkin_id    int                   not null
        primary key,
    member_id     int      default NULL null,
    checkin_time  datetime              not null,
    checkout_time datetime default NULL null,
    constraint check_in_ibfk_1
        foreign key (member_id) references member (member_id)
)
    comment '打卡表：记录会员的签到签退信息' engine = InnoDB
                                            collate = utf8mb4_0900_ai_ci;

create index member_id
    on check_in (member_id);

