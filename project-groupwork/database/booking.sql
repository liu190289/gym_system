create table booking
(
    booking_id     int                                                          not null
        primary key,
    member_id      int                                        default NULL      null,
    course_id      int                                        default NULL      null,
    booking_time   datetime                                                     not null,
    booking_status enum ('pending', 'confirmed', 'cancelled') default 'pending' null,
    constraint booking_ibfk_1
        foreign key (member_id) references member (member_id),
    constraint booking_ibfk_2
        foreign key (course_id) references course (course_id)
)
    comment '预约表：存储会员对课程的预约记录' engine = InnoDB
                                              collate = utf8mb4_0900_ai_ci;

create index course_id
    on booking (course_id);

create index member_id
    on booking (member_id);

