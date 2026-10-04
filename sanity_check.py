
import sqlite3

DB_NAME = "urban_service.db"

conn = sqlite3.connect(DB_NAME)
cur = conn.cursor()

query = """
SELECT
    category,
    COUNT(*) AS booking_count,
    SUM(amount_inr) AS total_revenue
FROM bookings
GROUP BY category
ORDER BY category;
"""

cur.execute(query)
rows = cur.fetchall()

print("Sanity Check: Booking Count and Revenue by Category")
print("-" * 55)

for category, count, revenue in rows:
    print(f"{category}: count={count}, total=₹{revenue}")

conn.close()