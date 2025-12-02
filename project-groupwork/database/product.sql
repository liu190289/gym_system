create table product
(
    product_id int             not null
        primary key,
    name       varchar(100)    not null,
    price      decimal(10, 2)  not null,
    stock      int default '0' not null
)
    comment '产品表：存储健身房销售的产品信息及库存' engine = InnoDB
                                                    collate = utf8mb4_0900_ai_ci;

