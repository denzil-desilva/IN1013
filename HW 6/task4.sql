USE Restaurant;

-- 1

SELECT cust_name
FROM restBill 
WHERE bill_total > 450 AND bill_no IN
(SELECT bill_no 
FROM restBill INNER JOIN restStaff P ON 
restBill.waiter_no = P.staff_no INNER JOIN restStaff Q ON
P.headwaiter = Q.staff_no
WHERE Q.first_name = "Charles");

-- 2

SELECT first_name, surname
FROM restStaff
WHERE staff_no IN 
(SELECT S.staff_no
FROM restStaff P INNER JOIN restBill B ON
B.waiter_no = P.staff_no INNER JOIN restStaff S 
ON S.staff_no = P.headwaiter
WHERE cust_name LIKE "%Nerida%" AND bill_date = 160111);

-- 3

SELECT cust_name, bill_total
FROM restBill
WHERE bill_total <  
(SELECT AVG(bill_total)
FROM restBill)
ORDER BY bill_total ASC;

-- 4

SELECT first_name, surname
FROM restStaff
WHERE staff_no NOt IN
(SELECT DISTINCT(waiter_no)
FROM restBill);

-- 5

SELECT cust_name, first_name, surname, room_name
FROM restBill B INNER JOIN restRoom_management M ON
B.bill_date = M.room_date INNER JOIN restStaff S ON
M.headwaiter = S.staff_no
WHERE bill_total = 
(SELECT MAX(bill_total)
FROM restBill);


 