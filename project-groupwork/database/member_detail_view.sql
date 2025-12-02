create definer = root@localhost view member_detail_view as
select `m`.`member_id`                                 AS `member_id`,
       `m`.`name`                                      AS `name`,
       `m`.`phone`                                     AS `phone`,
       `m`.`email`                                     AS `email`,
       `m`.`gender`                                    AS `gender`,
       `m`.`birth_date`                                AS `birth_date`,
       (year(curdate()) - year(`m`.`birth_date`))      AS `age`,
       `m`.`register_date`                             AS `register_date`,
       `m`.`status`                                    AS `member_status`,
       `mc`.`card_id`                                  AS `card_id`,
       `mc`.`card_type`                                AS `card_type`,
       `mc`.`start_date`                               AS `start_date`,
       `mc`.`end_date`                                 AS `end_date`,
       `mc`.`card_status`                              AS `card_status`,
       (to_days(`mc`.`end_date`) - to_days(curdate())) AS `days_remaining`
from (`member` `m` left join `membership_card` `mc` on ((`m`.`member_id` = `mc`.`member_id`)));

