create database hospitality_project;
use hospitality_project;
CREATE TABLE hotel_bookings (
    booking_id INT,
    customer_id VARCHAR(10),
    booking_date DATE,
    check_in_date DATE,
    check_out_date DATE,
    hotel_city VARCHAR(50),
    customer_type VARCHAR(20),
    room_type VARCHAR(20),
    lead_time INT,
    stay_duration INT,
    avg_daily_rate FLOAT,
    total_price FLOAT,
    booking_channel VARCHAR(20),
    canceled INT,
    grp VARCHAR(5)
);

SELECT * FROM hospitality_project.hotel_bookings;

SELECT COUNT(*) FROM hotel_bookings;
SELECT * FROM hotel_bookings LIMIT 10;

#KPI QUERIES

#TOTAL BOOKINGS
select count(*) as total_bookings
from hotel_bookings;

#TOTAL REVENUE
select sum(total_price) as total_revenue 
from hotel_bookings;

#CANCELLATION RATE
select (sum(canceled) / count(*)) * 100 as cancellation_rate from 
hotel_bookings;

#AVERAGE DAILY RATE
select avg(avg_daily_rate) as avg_price 
from hotel_bookings;

#BOOKINGS BY CITY
select City, count(*) as total_bookings 
from hotel_bookings group by City order by total_bookings desc;

#MONTHLY BOOKING TREND
select month(booking_date) as month,
    COUNT(*) as bookings
from hotel_bookings
group by month
order by month;

#CUSTOMER TYPE ANALYSIS
select customer_type, COUNT(*) as total_bookings
from hotel_bookings
group by customer_type;

#REVENUE BY CITY
SELECT hotel_city, SUM(total_price) AS estimated_revenue,
SUM(CASE WHEN is_canceled = 0 THEN total_price ELSE 0 END) AS actual_revenue
FROM hotel_bookings
GROUP BY hotel_city
ORDER BY actual_revenue DESC;

#REVENUE BY ROOM TYPE
SELECT room_type, SUM(total_price) AS estimated_revenue,
SUM(CASE WHEN is_canceled = 0 THEN total_price ELSE 0 END) AS actual_revenue
FROM hotel_bookings
GROUP BY room_type
ORDER BY actual_revenue DESC;

#LEAD TIME VS CANCELLATION
select lead_time, avg(canceled) as cancellation_rate
from hotel_bookings
group by lead_time
order by lead_time;

#A/B TESTING
select grp, COUNT(*) as total_users,
SUM(canceled) as canceled,
(SUM(canceled)/COUNT(*)) * 100 as cancellation_rate
from hotel_bookings
GROUP by grp;
