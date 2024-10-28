import mysql.connector
from bs4 import BeautifulSoup
import requests

# Database connection
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Namith@sql",  
    database="aaa"
)
mycursor = mydb.cursor()

# List of product URLs
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
    ("SEMICON Europa", 'https://exhibitors.electronica.de/exhibitor-portal/2024/products-services/product-service-semicon-europa/?clgk=2_18')
]

# Function to create table for each product category
def create_table(category):
    table_name = category.replace(" ", "_").replace("-", "_")  # Replace spaces and hyphens for valid SQL names
    mycursor.execute(f"""
        CREATE TABLE IF NOT EXISTS {table_name} (
            id INT AUTO_INCREMENT PRIMARY KEY,
            categories VARCHAR(255),
            exhibitors BIGINT
        )
    """)

# Scraping and inserting data for each URL
for category, url in urls:
    create_table(category)  # Create a table for the category
    response = requests.get(url)
    soup = BeautifulSoup(response.text, 'lxml')

    # Find and cleaned the data 
    products_data = soup.find('div', class_='contOfNv_10').text.splitlines()
    filtered_data = [line.strip() for line in products_data if line.strip()]

    # Inserting scraped data into the respective table
    for i in range(1, len(filtered_data), 2):
        current_category = filtered_data[i]
        exhibitors = filtered_data[i + 1] if i + 1 < len(filtered_data) else 'N/A'

        # Skip the total row
        if current_category == category:
            continue  # Skip this iteration

        # Extract only the number and converts to integer for performig operation in Mysql
        if exhibitors != 'N/A':
            exhibitors = ''.join(filter(str.isdigit, exhibitors))  
            exhibitors = int(exhibitors) if exhibitors else 0  # Convert to integer
        else:
            exhibitors = 0  # Set to 0 if nothing finds

        print(f"Inserting into DB: Category: '{current_category}', Exhibitors: {exhibitors} in {category} table")  # Debug line

        sql = f"INSERT INTO {category.replace(' ', '_').replace('-', '_')} (categories, exhibitors) VALUES (%s, %s)"
        
        try:
            mycursor.execute(sql, (current_category, exhibitors))
            mydb.commit()
        except mysql.connector.Error as err:
            print(f"Error: {err}, Category: '{current_category}', Exhibitors: {exhibitors}")


mycursor.close()
mydb.close()
