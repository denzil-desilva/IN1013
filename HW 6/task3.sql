USE Restaurant;

-- 1

SELECT first_name, surname
FROM restBill INNER JOIN restStaff 
ON restBill.waiter_no = restStaff.staff_no
WHERE cust_name = "Tanya Singh";

-- 2

SELECT room_date
FROM restRoom_management INNER JOIN restStaff 
ON restRoom_management.headwaiter = restStaff.staff_no
WHERE (room_date > 160200 AND room_date < 160300)
AND restStaff.first_name = "Charles" AND room_name = "Blue";

-- 3

SELECT P.first_name, P.surname, P.headwaiter
FROM restStaff P INNER JOIN restStaff Q 
ON P.headwaiter = Q.staff_no INNER JOIN restStaff M 
ON P.headwaiter = M.headwaiter
WHERE M.first_name = "Zoe";

-- 4

SELECT cust_name, bill_total, first_name 
as "Waiters first name", surname as "Waiters second name"
FROM restBill INNER JOIN restStaff ON 
restBill.waiter_no = restStaff.staff_no
ORDER BY bill_total DESC;

-- 5

SELECT Q.first_name, Q.surname
FROM restBill P INNER JOIN restStaff Q ON 
P.waiter_no = Q.staff_no INNER JOIN restStaff R 
ON Q.headwaiter = R.staff_no INNER JOIN restStaff M 
ON R.headwaiter = M.headwaiter
WHERE bill_no = 00014 OR bill_no = 00017;

-- 6

SELECT first_name, surname
FROM restRoom_management R INNER JOIN restStaff S ON
R.headwaiter = S.staff_no OR R.headwaiter = S.headwaiter
WHERE room_name = "Blue" AND room_date = 160312;
