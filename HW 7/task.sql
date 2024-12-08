USE Restaurant;

-- 1

CREATE OR REPLACE VIEW samBills
AS SELECT first_name, surname, bill_date, cust_name, bill_total
FROM restBill B INNER JOIN restStaff S 
ON B.waiter_no = S.staff_no 
WHERE first_name = "Sam" AND surname = "Pitt";

-- 2

SELECT * 
FROM samBills
WHERE bill_total > 400;

-- 3

CREATE OR REPLACE VIEW roomTotals1
AS SELECT room_name, SUM(bill_total) as "total_sum"
FROM restBill INNER JOIN restRest_table 
ON restBill.table_no = restRest_table.table_no
GROUP BY room_name;

SELECT * FROM roomTotals1;

CREATE OR REPLACE VIEW roomTotals2
AS SELECT room_name, SUM(covers) as "total_sum"
FROM restBill INNER JOIN restRest_table 
ON restBill.table_no = restRest_table.table_no
GROUP BY room_name;

SELECT * FROM roomTotals2;

-- 4

CREATE OR REPLACE VIEW teamTotals
AS SELECT CONCAT(S2.first_name, " ", S2.surname) as "headwaiter_name",
SUM(bill_total) as "total_sum"
FROM restBill B INNER JOIN restStaff S ON
B.waiter_no = S.staff_no INNER JOIN restStaff S2
ON S.headwaiter = S2.staff_no
GROUP BY S.headwaiter;

SELECT * FROM teamTotals;

CREATE OR REPLACE VIEW teamTotals2
AS SELECT CONCAT(S2.first_name, " ", S2.surname) as "headwaiter_name",
SUM(covers) as "total_sum"
FROM restBill B INNER JOIN restStaff S ON
B.waiter_no = S.staff_no INNER JOIN restStaff S2
ON S.headwaiter = S2.staff_no
GROUP BY S.headwaiter;

SELECT * FROM teamTotals2;