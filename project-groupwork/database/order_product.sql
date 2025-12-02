create table order_product
(
    order_id   int             not null,
    product_id int             not null,
    quantity   int default '1' not null,
    primary key (order_id, product_id),
    constraint order_product_ibfk_1
        foreign key (order_id) references `order` (order_id),
    constraint order_product_ibfk_2
        foreign key (product_id) references product (product_id)
)
    comment '订单产品关联表：存储订单与产品的多对多关系及购买数量' engine = InnoDB
                                                                  collate = utf8mb4_0900_ai_ci;

create index product_id
    on order_product (product_id);

