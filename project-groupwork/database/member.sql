create table member
(
    member_id     int                                                    not null
        primary key,
    name          varchar(100)                          default NULL     null,
    phone         varchar(20)                           default NULL     null,
    email         varchar(100)                          default NULL     null,
    gender        enum ('male', 'female', 'other')      default 'other'  null,
    birth_date    date                                  default NULL     null,
    register_date datetime                              default NULL     null,
    status        enum ('active', 'inactive', 'frozen') default 'active' null
)
    comment '会员表：存储健身房会员的基本信息' engine = InnoDB
                                              collate = utf8mb4_0900_ai_ci;

