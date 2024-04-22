/*Q1 - Which restaurants have the highest average ratings? */
select restaurant_name ,avg(rating) as avg_rating from swiggy group by restaurant_name order by avg_rating desc limit 5;

/*Q2 - Are there any correlations between restaurant ratings and city locations? */
select city ,avg(rating) as avg_rating from swiggy group by city order by avg_rating desc;

/*Q3 - How many restaurants have a rating greater than 4.5? */
Select count(distinct restaurant_name) as highest_rating from swiggy where rating >4.5;

/*Q4 - How many restaurants have the word "pizza" in their name? */
select count(distinct restaurant_name) as pizza_restaurant from swiggy where restaurant_name like'%Pizz%';

/*Q5 - Find the top 5 most expensive restaurants that offer cuisine other than Indian cuisine. */
select distinct restaurant_name ,cost_per_person from swiggy where cuisine<>'Indian' order by cost_per_person desc limit 5;

/*Q6 - Retrieve the details of restaurants that have the same name but are located in different cities. */
select distinct t1.restaurant_name ,t1.city ,t2.city from swiggy t1 join swiggy t2 
on t1.restaurant_name=t2.restaurant_name 
and t1.city<> t2.city;