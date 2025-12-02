create table `order`
(
    order_id       int                                                                 not null
        primary key,
    member_id      int                                               default NULL      null,
    order_type     enum ('membership', 'product', 'course')                            not null,
    amount         decimal(10, 2)                                                      not null,
    order_time     datetime                                                            not null,
    payment_status enum ('pending', 'paid', 'cancelled', 'refunded') default 'pending' null,
    constraint order_ibfk_1
        foreign key (member_id) references member (member_id)
)
    comment '订单表：存储所有类型的订单信息（会员卡、产品、课程）' engine = InnoDB
                                                              collate = utf8mb4_0900_ai_ci;

create index member_id
    on `order` (member_id);

