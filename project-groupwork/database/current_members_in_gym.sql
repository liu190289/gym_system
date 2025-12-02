create definer = root@localhost view current_members_in_gym as
select `ci`.`checkin_id`                                 AS `checkin_id`,
       `m`.`member_id`                                   AS `member_id`,
       `m`.`name`                                        AS `name`,
       `m`.`phone`                                       AS `phone`,
       `ci`.`checkin_time`                               AS `checkin_time`,
       timestampdiff(MINUTE, `ci`.`checkin_time`, now()) AS `minutes_in_gym`
from (`check_in` `ci` join `member` `m` on ((`ci`.`member_id` = `m`.`member_id`)))
where (`ci`.`checkout_time` is null)
order by `ci`.`checkin_time`;

