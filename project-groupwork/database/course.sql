create table course
(
    course_id    int                                                                                   not null
        primary key,
    name         varchar(100)                                                                          not null,
    type         enum ('yoga', 'spinning', 'pilates', 'aerobics', 'strength', 'other') default 'other' null,
    duration     int                                                                                   not null comment 'Course duration in minutes',
    max_capacity int                                                                   default '20'    not null,
    employee_id  int                                                                   default NULL    null,
    constraint course_ibfk_1
        foreign key (employee_id) references employee (employee_id)
)
    comment '课程表：存储健身房提供的课程信息及对应教练' engine = InnoDB
                                                        collate = utf8mb4_0900_ai_ci;

create index employee_id
    on course (employee_id);

