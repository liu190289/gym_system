create definer = root@localhost view weekly_attendance as
select `check_in`.`member_id`             AS `member_id`,
       week(`check_in`.`checkin_time`, 0) AS `week_num`,
       count(0)                           AS `total_checkins`
from `check_in`
group by `check_in`.`member_id`, `week_num`;

