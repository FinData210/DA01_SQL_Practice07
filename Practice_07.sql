--Ex1 
select name 
from STUDENTS
where marks>75
order by right(name,3), ID
--Ex2
select user_id,
concat(upper(left(name,1)), lower(substring(name, 2))) as name
from Users
order by user_id
--Ex3
select manufacturer,
'$'||round(sum(total_sales)/1000000)||' '||'million'
from pharmacy_sales 
group by manufacturer
order by sum(total_sales), manufacturer
--Ex4
select 
extract(month from submit_date) as mth,
product_id,
round(avg(stars),2) as avg_stars
from reviews 
group by mth, product_id
order by mth, product_id
--Ex5
select sender_id,
count(message_id) as message_count
from messages
where extract(month from sent_date)=8
and extract(year from sent_date)=2022
group by sender_id 
order by message_count DESC
limit 2
--Ex6
select tweet_id
from Tweets
where length(content)>15
--Ex7
--Ex8
select 
count(employee_id) as number_employee
from employees 
where extract(month from joining_date) between 1 and 7 
and extract(year from joining_date)=2022
--Ex9
select 
position('a' in first_name) as position
from worker 
where first_name='Amitah' 
--Ex10
select substring(title, length(winery)+2,4)
from winemag_p2
where country='Macedonia'
