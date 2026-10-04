
-- 1. Check duplicate partner IDs
SELECT partner_id, COUNT(*) AS duplicate_count
FROM partners_import
GROUP BY partner_id
HAVING COUNT(*) > 1;

-- 2. Create a clean partners table
CREATE TABLE partners AS
SELECT
    partner_id,
    city,
    primary_category,
    rating,
    active,
    days_since_onboarding
FROM (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY partner_id
               ORDER BY rowid
           ) AS rn
    FROM partners_import
)
WHERE rn = 1;

-- 3. Check clean partner count
SELECT COUNT(*) AS clean_partner_count
FROM partners;

-- 4. Find categories with zero bookings
SELECT c.category
FROM categories c
LEFT JOIN bookings b
    ON c.category = b.category
WHERE b.booking_id IS NULL;

-- 5. Find partners with zero bookings
SELECT p.partner_id
FROM partners p
LEFT JOIN bookings b
    ON p.partner_id = b.partner_id
WHERE b.booking_id IS NULL;

SELECT COUNT(*) AS total_bookings
FROM bookings;

SELECT partner_id, COUNT(*) AS duplicate_count
FROM partners_import
GROUP BY partner_id
HAVING COUNT(*) > 1
ORDER BY partner_id;


SELECT COUNT(*) AS clean_partner_count
FROM partners;