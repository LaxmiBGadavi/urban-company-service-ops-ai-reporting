
import sqlite3

conn = sqlite3.connect("urban_service.db")
cursor = conn.cursor()

cursor.execute("SELECT name FROM sqlite_master WHERE type='table'")
tables = cursor.fetchall()

print("Tables in database:", tables)

cursor.execute("SELECT COUNT(*) FROM bookings")
print("Total bookings:", cursor.fetchone()[0])

conn.close()