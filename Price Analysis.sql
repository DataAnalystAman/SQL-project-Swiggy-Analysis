/*Q1 - What is the average cost per person across different cities? */
select city, avg(cost_per_person) as avg_cost from swiggy 
group by city
order by avg_cost desc;

/*Q2 - Are there any trends in pricing based on cuisine types? */
select cuisine ,round(avg(price),2) as avg_price from swiggy 
group by cuisine
order by avg_price desc;

/*Q3 - How do price ranges correlate with restaurant ratings? */
select 
case 
when cost_per_person <100 then 'low'
when cost_per_person >=100 and cost_per_person<200 then 'Medium'
when cost_per_person >=200 then 'High'
else 'other'
end as price_range,
avg(rating) as avg_rating 
from swiggy 
group by price_range
order by avg_rating desc;

/*Q4 - What is the highest price of the item under the 'recommended' menu category for each restaurant? */
select restaurant_name ,menu_category,max(price) as highest_price from swiggy
where menu_category='recommended'
group by restaurant_name;