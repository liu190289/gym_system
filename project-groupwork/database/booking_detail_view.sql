create definer = root@localhost view booking_detail_view as
select `b`.`booking_id`     AS `booking_id`,
       `b`.`booking_time`   AS `booking_time`,
       `b`.`booking_status` AS `booking_status`,
       `m`.`member_id`      AS `member_id`,
       `m`.`name`           AS `member_name`,
       `m`.`phone`          AS `member_phone`,
       `c`.`course_id`      AS `course_id`,
       `c`.`name`           AS `course_name`,
       `c`.`type`           AS `course_type`,
       `c`.`duration`       AS `duration`,
       `e`.`name`           AS `trainer_name`
from (((`booking` `b` join `member` `m` on ((`b`.`member_id` = `m`.`member_id`))) join `course` `c`
       on ((`b`.`course_id` = `c`.`course_id`))) left join `employee` `e` on ((`c`.`employee_id` = `e`.`employee_id`)));

