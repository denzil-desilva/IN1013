USE Restaurant;

-- 1

SELECT waiter_no, COUNT(*)
FROM restBill INNER JOIN restStaff 
ON restBill.waiter_no = restStaff.staff_no
GROUP BY waiter_no;

-- 3

SELECT 
