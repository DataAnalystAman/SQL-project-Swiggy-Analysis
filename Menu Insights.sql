/*Q1 - What are the most common menu categories offered by restaurants?*/
select menu_category ,count(*) as category_count from swiggy where menu_category is not null
 group by menu_category order by category_count desc;
 
 /*Q2 - Which items are the most expensive and which are the most popular? */
select item ,price as item_price 
from swiggy
order by item_price desc limit 1;
 
 select item ,price as item_price 
from swiggy
order by item_price limit 1;
 
 select item ,price as item_price 
 from swiggy where item is not null
 order by item_price  limit 1;
 
 select item ,count(*) as popular_item from swiggy 
 group by item
 order by popular_item desc limit 1;
 
  select item ,count(*) as popular_item from swiggy 
 group by item
 order by popular_item limit 1;
 
 /*Q3 - Are there any patterns in the distribution of vegetarian and non-vegetarian items? */
 select veg_or_nonveg ,count(*) as item_count 
 from swiggy 
 group by veg_or_nonveg
 order by item_count desc;
 
 /*Q4 - What is the most common cuisine among the restaurants in the dataset? */
 select cuisine ,count(*) as cuisine_count from swiggy
 group by cuisine
 order by cuisine_count desc;
 
  select cuisine ,count(*) as cuisine_count from swiggy
 group by cuisine
 order by cuisine_count ;