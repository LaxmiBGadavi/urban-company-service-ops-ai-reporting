```sql
-- Task 6: Insert and Delete Bookings

-- 1. Check the initial number of bookings
SELECT COUNT(*) AS total_bookings
FROM bookings;

-- 2. Check the initial total revenue
SELECT SUM(amount_inr) AS total_revenue
FROM bookings;


-- 3. Delete the three test bookings
DELETE FROM bookings
WHERE booking_id IN ('B0037', 'B0214', 'B0501');


-- 4. Verify the number of bookings after deletion
SELECT COUNT(*) AS remaining_bookings
FROM bookings;


-- 5. Insert three new bookings
INSERT INTO bookings (
    booking_id,
    partner_id,
    city,
    category,
    booking_date,
    amount_inr,
    complaint_flag,
    sla_breach_flag,
    is_test
)
VALUES
('B9001', 'P009', 'Mumbai', 'Deep Home Cleaning',
 '2026-03-31', 3200, 0, 0, 0),

('B9002', 'P041', 'Chennai', 'Plumbing',
 '2026-03-31', 640, 0, 0, 0),

('B9003', 'P035', 'Hyderabad', 'Electrical Repair',
 '2026-03-31', 980, 0, 0, 0);


-- 6. Verify the final number of bookings
SELECT COUNT(*) AS final_bookings
FROM bookings;


-- 7. Verify the final total revenue
SELECT SUM(amount_inr) AS final_revenue
FROM bookings;
```
SELECT COUNT(*) AS salon_partner_count
FROM partners
WHERE primary_category LIKE 'Salon%';

SELECT
    city,
    category,
    COUNT(*) AS bookings_count,
    SUM(amount_inr) AS revenue_inr,
    SUM(sla_breach_flag) AS sla_breaches
FROM bookings
GROUP BY city, category
ORDER BY city, category;