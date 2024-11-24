USE Restaurant;

-- 1

SELECT cust_name, bill_date, bill_total
FROM restBill
WHERE cust_name = "Bob Crow";

-- 2

SELECT DISTINCT(cust_name)
FROM restBill
WHERE cust_name LIKE "% Smith";

-- 3

SELECT DISTINCT(cust_name)
FROM restBill
WHERE cust_name LIKE "% C%";

-- 4

SELECT first_name, surname
FROM restStaff
WHERE headwaiter IS NULL;

-- 5

SELECT *
FROM restBill
WHERE bill_date >= 160201 AND bill_date < 160301;

-- 6

SELECT bill_date
FROM restBill
WHERE bill_total > 0 AND bill_date >= 150101 
AND bill_date < 160101;