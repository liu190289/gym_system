create table employee
(
    employee_id int                                                              not null
        primary key,
    name        varchar(100)                                                     not null,
    role        enum ('trainer', 'receptionist', 'admin') default 'receptionist' null,
    phone       varchar(20)                               default NULL           null,
    hire_date   date                                                             not null
)
    comment '员工表：存储健身房员工信息，包括教练、前台和管理员' engine = InnoDB
                                                              collate = utf8mb4_0900_ai_ci;

