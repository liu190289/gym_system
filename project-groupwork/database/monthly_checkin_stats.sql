create definer = root@localhost view monthly_checkin_stats as
select `m`.`member_id`                                                       AS `member_id`,
       `m`.`name`                                                            AS `name`,
       year(`ci`.`checkin_time`)                                             AS `year`,
       month(`ci`.`checkin_time`)                                            AS `month`,
       count(0)                                                              AS `checkin_count`,
       avg(timestampdiff(MINUTE, `ci`.`checkin_time`, `ci`.`checkout_time`)) AS `avg_duration_minutes`,
       max(`ci`.`checkin_time`)                                              AS `last_checkin`
from (`member` `m` join `check_in` `ci` on ((`m`.`member_id` = `ci`.`member_id`)))
where (`ci`.`checkout_time` is not null)
group by `m`.`member_id`, `m`.`name`, year(`ci`.`checkin_time`), month(`ci`.`checkin_time`);

