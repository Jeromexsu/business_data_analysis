create table user_behavior_tb (
    `user_id` string,
    `item_id` string,
    `category_id` string,
    `behavior_type` string,
    `timestamp` int,
    `datetime` string)
    row format delimited
    fields terminated by ','
    lines terminated by '\n';

insert overwrite table user_behavior_tb
select user_id, item_id, category_id, behavior_type, `timestamp`, `datetime`
from user_behavior_tb
group by user_id, item_id, category_id, behavior_type, `timestamp`, `datetime`;