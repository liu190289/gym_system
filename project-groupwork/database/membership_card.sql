create table membership_card
(
    card_id     int                                                      not null
        primary key,
    member_id   int                                    default NULL      null,
    card_type   enum ('yearly', 'monthly')             default 'monthly' null,
    start_date  date                                   default NULL      null,
    end_date    date                                   default NULL      null,
    card_status enum ('active', 'inactive', 'expired') default 'active'  null,
    constraint membership_card_ibfk_1
        foreign key (member_id) references member (member_id)
)
    comment '会员卡表：存储会员的会籍卡信息，包括年卡和月卡' engine = InnoDB
                                                           collate = utf8mb4_0900_ai_ci;

create index member_id
    on membership_card (member_id);

