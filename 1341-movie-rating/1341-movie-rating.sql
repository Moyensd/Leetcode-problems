(select u.name as results
from movierating r
join movies m on r.movie_id = m.movie_id 
join users u on r.user_id = u.user_id
group by u.name 
order by count(*) desc, u.name asc
limit 1)
union all
(select m.title as results
from movierating r
join movies m on r.movie_id = m.movie_id 
join users u on r.user_id = u.user_id
where r.created_at between "2020-02-01" and "2020-02-29"
group by m.title
order by avg(r.rating) desc, m.title asc
limit 1)