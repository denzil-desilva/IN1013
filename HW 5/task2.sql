USE  Restaurant;

-- 1

SELECT SUM(bill_total) as "Income"
FROM restBill;

-- 2

SELECT SUM(bill_total) as "Feb Income"
FROM restBill
WHERE bill_date >= 160201 AND bill_date < 160301;

-- 3

SELECT SUM(bill_total) as "Feb Income", AVG(bill_total) as "Average"
FROM restBill
WHERE bill_date >= 160201 AND bill_date < 160301;

-- 4

SELECT MAX(no_of_seats) as "Max", MIN(no_of_seats) as "Min", AVG(no_of_seats) as "Avg"
FROM restRest_table
WHERE room_name = "Blue";

-- 5

SELECT DISTINCT(table_no), waiter_no
FROM restBill
WHERE waiter_no = 004 OR waiter_no = 002;