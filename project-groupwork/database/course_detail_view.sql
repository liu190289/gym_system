create definer = root@localhost view course_detail_view as
select `c`.`course_id`                                AS `course_id`,
       `c`.`name`                                     AS `course_name`,
       `c`.`type`                                     AS `type`,
       `c`.`duration`                                 AS `duration`,
       `c`.`max_capacity`                             AS `max_capacity`,
       `e`.`employee_id`                              AS `employee_id`,
       `e`.`name`                                     AS `trainer_name`,
       `e`.`phone`                                    AS `trainer_phone`,
       count(`b`.`booking_id`)                        AS `current_bookings`,
       (`c`.`max_capacity` - count(`b`.`booking_id`)) AS `available_slots`
from ((`course` `c` left join `employee` `e` on ((`c`.`employee_id` = `e`.`employee_id`))) left join `booking` `b`
      on (((`c`.`course_id` = `b`.`course_id`) and (`b`.`booking_status` = 'confirmed'))))
group by `c`.`course_id`, `c`.`name`, `c`.`type`, `c`.`duration`, `c`.`max_capacity`, `e`.`employee_id`, `e`.`name`,
         `e`.`phone`;

