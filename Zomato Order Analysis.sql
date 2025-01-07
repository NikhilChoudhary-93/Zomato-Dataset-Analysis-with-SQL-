use sample_foodapp;
desc zomato;
select * from zomato;	
select * from zomato limit 10;

 select count(*) from zomato;
 
 select
 round(min(rating),2) as min_rating,
  round(max(rating),2) as max_rating,
   round(avg(rating),2) as ave_rating
   from zomato;
   
select
round(min(num_of_ratings),2) as min_num_of_ratings,
round(max(num_of_ratings),2) as max_num_of_ratings,
round(avg(num_of_ratings),2) as avg_num_of_ratings
from zomato;
select
round(min(avg_cost),2) as min_avg_cost,
round(max(avg_cost),2) as max_avg_cost,
round(avg(avg_cost),2) as avg_avg_cost,
round(sum(avg_cost),2) as sum_avg_cost
from zomato;
select rating, count(*) as frequency
from zomato
group by rating
order By rating desc;

select rating, count(*) as frequency
from zomato
group by rating
order By frequency desc
limit 5;

select restaurant_name, rating from zomato where rating>4.5;

select avg_cost, count(*) as frequency
from zomato
group by avg_cost
order By avg_cost desc;

select avg_cost, count(*) as frequency
from zomato
group by avg_cost
order By frequency desc;

select restaurant_name, rating from zomato 
where rating>4.5
order by rating desc limit 10;

select * from zomato
where online_order = 'yes';

   select table_booking, round(avg(rating),2) as avg_rate,
	round(avg(avg_cost),2) as avg_cost
    from zomato
    group by table_booking;
    
 select cuisines_type, round(avg(rating),2) as avg_rate,
 round(avg(avg_cost),2) as avg_cost
 from zomato
 group by cuisines_type
 order by count(*) desc
 limit 10;

 select * from zomato;
 
  select area, round(avg(rating),2) as avg_rate,
  round(avg(avg_cost),2) as avg_cost,
  count(*) as num_restaurants
 from zomato
 group by area
 order by num_restaurants desc
 limit 10;
 
 select restaurant_name, rating, num_of_ratings, avg_cost,
 area from zomato order by rating desc, num_of_ratings desc limit 10;
 
  select restaurant_name, rating, num_of_ratings, avg_cost, area
  from zomato
  order by avg_cost desc
  limit 10;

 
 select restaurant_name, area, rating, cuisines_type
 from zomato
 where cuisines_type like '%Biryani%' and area like '%kalyan nagar%' and rating like '%2.8%';
 
 select restaurant_name, avg_cost, rating
 from zomato
 where avg_cost > (select avg(avg_cost) from zomato)
 and rating < (select avg(rating) from zomato);
 
select area, count(*) as num_of_restaurant
from zomato
where online_order ='yes'
group by area
order by num_of_restaurant desc
limit 5;

select area, round(avg(rating),2) as avg_rating
from zomato
where cuisines_type like '%chinese%'
group by area
order by avg_rating desc;