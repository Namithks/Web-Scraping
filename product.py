import mysql.connector
from bs4 import BeautifulSoup
import requests

# Database connection with my connection details
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Namith@sql",
    database="main_products"
)

mycursor = mydb.cursor()

# Create 'Products' table in MySQL
mycursor.execute("""
    CREATE TABLE IF NOT EXISTS Products (
        id INT AUTO_INCREMENT PRIMARY KEY,
        category_name VARCHAR(255) UNIQUE
    )
""")

# List of URLs with category names
urls = [
    ("Semiconductors", 'https://exhibitors.electronica.de/exhibitor-portal/2024/products-services/product-service-semiconductors/?clgk=2_1'),
    ("Embedded Systems", 'https://exhibitors.electronica.de/exhibitor-portal/2024/products-services/product-service-embedded-systems/?clgk=2_2'),
    ("Displays", 'https://exhibitors.electronica.de/exhibitor-portal/2024/products-services/product-service-displays/?clgk=2_3'),
    ("Micro- and Nanosystems", 'https://exhibitors.electronica.de/exhibitor-portal/2024/products-services/product-service-micro-and-nanosystems/?clgk=2_4'),
    ("Sensor Technology", 'https://exhibitors.electronica.de/exhibitor-portal/2024/products-services/product-service-sensor-technology/?clgk=2_5'),
    ("Test and Measurement", 'https://exhibitors.electronica.de/exhibitor-portal/2024/products-services/product-service-test-and-measurement/?clgk=2_6'),
    ("Electronic Design", 'https://exhibitors.electronica.de/exhibitor-portal/2024/products-services/product-service-electronic-design-ed--eda/?clgk=2_7'),
    ("Passive Components", 'https://exhibitors.electronica.de/exhibitor-portal/2024/products-services/product-service-passive-components/?clgk=2_8'),
    ("Electromechanics", 'https://exhibitors.electronica.de/exhibitor-portal/2024/products-services/product-service-electromechanics--system-peripherals/?clgk=2_9'),
    ("Power Supplies", 'https://exhibitors.electronica.de/exhibitor-portal/2024/products-services/product-service-power-supplies/?clgk=2_10'),
    ("PCBs and Other Circuit Carriers", 'https://exhibitors.electronica.de/exhibitor-portal/2024/products-services/product-service-pcbs-and-other-circuit-carriers/?clgk=2_11'),
    ("EMS Electronic Manufacturing Services", 'https://exhibitors.electronica.de/exhibitor-portal/2024/products-services/product-service-ems-electronic-manufacturing-services/?clgk=2_12'),
    ("Automotive", 'https://exhibitors.electronica.de/exhibitor-portal/2024/products-services/product-service-automotive/?clgk=2_14'),
    ("Assemblies and Subsystems", 'https://exhibitors.electronica.de/exhibitor-portal/2024/products-services/product-service-assemblies-and-subsystems/?clgk=2_13'),
    ("Wireless", 'https://exhibitors.electronica.de/exhibitor-portal/2024/products-services/product-service-wireless/?clgk=2_15'),
    ("Services", 'https://exhibitors.electronica.de/exhibitor-portal/2024/products-services/product-service-services/?clgk=2_16'),
    ("Printed Flexible Electronics", 'https://exhibitors.electronica.de/exhibitor-portal/2024/products-services/product-service-printed-flexible-electronics/?clgk=2_17'),
    ("SEMICON Europa",'https://exhibitors.electronica.de/exhibitor-portal/2024/products-services/product-service-semicon-europa/?clgk=2_18')
]

# Step 2: Insert Products into the table
for category, _ in urls:
    try:
        sql = "INSERT INTO Products (category_name) VALUES (%s)"
        mycursor.execute(sql, (category,))
        mydb.commit()
    except mysql.connector.errors.IntegrityError:
        # Skip if the category already exists (to avoid duplicates)
        continue

# Step 3: Display the stored Products with their unique IDs
mycursor.execute("SELECT * FROM Products")
results = mycursor.fetchall()

print("Category ID | Category Name")
print("--------------------------------")
for row in results:
    print(f"{row[0]} | {row[1]}")

# Close the database connection
mycursor.close()
mydb.close()
