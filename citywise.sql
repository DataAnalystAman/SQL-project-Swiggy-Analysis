/*Q1 - How does the distribution of restaurants vary across different cities? */
select city ,count(distinct restaurant_name) as restaurant_count from swiggy
group by city
order by restaurant_count desc;

/*Q2 - Are certain cuisines more popular in specific cities? */
select city ,cuisine ,count(*) as cuisine_count from swiggy
group by city,cuisine
order by cuisine_count desc;

/*Q3 - Which is the top 1 city with the highest number of restaurants? */

/*Q4 - What are the most frequently ordered items across different cities? */