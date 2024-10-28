from bs4 import BeautifulSoup
import requests
from googlesearch import search



def Company_name_url():
    # Request to fetch fromm Electronica website
    source = requests.get('https://exhibitors.electronica.de/exhibitor-portal/2024/start/').text
    soup = BeautifulSoup(source, 'lxml')

    #1 Company Name
    company_name = soup.find('div', class_='jl_hd_logo').a.img['title']

    # 2 Website Url
    website_url = soup.find('div', class_='jl_hd_logo').a['href']

    print(f'Company Name : {company_name}')
    print(f'Website Url : {website_url}')


#3 Physical Address
def Company_address():
    #Fetch the source code from the webpage : #Source2 is for fetching Physical Adress
    source2 = requests.get('https://exhibitors.electronica.de/exhibitor-portal/2024/providerandimprint/').text
    soup2 = BeautifulSoup(source2, 'lxml')

    # Locate the section containing the address and contact details
    location = soup2.find('div', class_='ce_text')
    address = location.p.get_text(separator="\n").split("\n")

    # Print Address and Contact Details in formated
    print("Address")
    print("\n".join(address[1:5]))  # Address part
    print("---------------------------------------------")
    print("Contact Details")
    print(f"{address[5]}\n{address[6]}\nE-mail: {address[8]}\nWebsite: {address[10]}")


#4 Products and Services Offered

def Company_pro_service():
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

    # Loop through each URL and fetch the content
    for category, url in urls:
        print(f"\nCategory: {category}\n{'-' * 50}")
        
        # Fetch and parse the page content
        source = requests.get(url).text
        soup = BeautifulSoup(source, 'lxml')
        
        # Extract product and exhibitor information
        products_data = soup.find('div', class_='contOfNv_10').text.splitlines()
        filtered_data = [line.strip() for line in products_data if line.strip()]
        
        # Iterate through the filtered list and format output
        for i in range(1, len(filtered_data), 2):
            product = filtered_data[i]
            exhibitors = filtered_data[i + 1] if i + 1 < len(filtered_data) else 'N/A'
            print(f"{product} : {exhibitors}")


# 5 Company Profile
def Company_profile():
    
    urls = [
        ("CODICO", "https://exhibitors.electronica.de/exhibitor-portal/2024/list-of-exhibitors/exhibitordetails/codico/?elb=807.1100.2662.1.111"),
        ("I-PEX Europe", "https://exhibitors.electronica.de/exhibitor-portal/2024/list-of-exhibitors/exhibitordetails/i-pex-europe/?elb=807.1100.6125.1.111"),
        ("Texas Instruments", "https://exhibitors.electronica.de/exhibitor-portal/2024/list-of-exhibitors/exhibitordetails/texas-instruments-gmbh/?elb=807.1100.2860.1.111"),
        ("Calterah", "https://exhibitors.electronica.de/exhibitor-portal/2024/list-of-exhibitors/exhibitordetails/calterah-semiconductor/?elb=807.1100.8701.1.111"),
        ("GEYER Electronic", "https://exhibitors.electronica.de/exhibitor-portal/2024/list-of-exhibitors/exhibitordetails/geyer-electronic-gmbh/?elb=807.1100.1827.2.111"),
    ]

    for heading, url in urls:
        print(f"\n{heading}\n")# Print the heading
        
        # Fetch and parse the page content
        source = requests.get(url).text
        soup = BeautifulSoup(source, 'lxml')
        
        # Find all divs with class 'pb_s_content'
        company_profile = soup.find_all('div', class_='pb_s_content')
        
        for profile in company_profile:
            content = profile.find('div', class_='ce_text')
            if content:
                paragraphs = content.find_all('p')
                for paragraph in paragraphs:
                    print(paragraph.get_text(strip=True))  # Print only the text from <p> tags
        
        print("\n" + "=" * 50 + "\n")  # Separator between company profiles


    # List 2 inside a div
    urls = [
        ("Yamaha", "https://exhibitors.electronica.de/exhibitor-portal/2024/list-of-exhibitors/exhibitordetails/yamaha-robotics/?elb=807.1100.9643.1.111"),
        ("MPE - Garry", "https://exhibitors.electronica.de/exhibitor-portal/2024/list-of-exhibitors/exhibitordetails/mpe-garry-gmbh/?elb=807.1100.2079.1.111"),
        ("Brocheer", "https://exhibitors.electronica.de/exhibitor-portal/2024/list-of-exhibitors/exhibitordetails/brocheer-pte-ltd/?elb=807.1100.9697.1.111"),
        ("Hamamatsu", "https://exhibitors.electronica.de/exhibitor-portal/2024/list-of-exhibitors/exhibitordetails/hamamatsu-photonics-deutschland-gmbh/?elb=807.1100.1657.1.111"),
        ("Cicor 1", "https://exhibitors.electronica.de/exhibitor-portal/2024/list-of-exhibitors/exhibitordetails/cicor-group/?elb=807.1100.4976.1.111"),
        ("Fusion Worldwide", "https://exhibitors.electronica.de/exhibitor-portal/2024/list-of-exhibitors/exhibitordetails/fusion-worldwide-fusion-trade-inc/?elb=807.1100.5959.1.111"),
        ("Cicor 2", "https://exhibitors.electronica.de/exhibitor-portal/2024/list-of-exhibitors/exhibitordetails/cicor-group/?elb=807.1100.4976.1.111"),
        ("IC-Direct", "https://exhibitors.electronica.de/exhibitor-portal/2024/list-of-exhibitors/exhibitordetails/ic-direct-gmbh/?elb=807.1100.10026.1.111"),
        ("RangeAnt", "https://exhibitors.electronica.de/exhibitor-portal/2024/list-of-exhibitors/exhibitordetails/rangeant-ab/?elb=807.1100.10668.1.111"),
        ("First Quality Circuit Co.Ltd", "https://exhibitors.electronica.de/exhibitor-portal/2024/list-of-exhibitors/exhibitordetails/first-quality-circuit-co-ltd/?elb=807.1100.9880.1.111")
    ]

    # Loop through each tuple in the list
    for heading, url in urls:
        # Fetch the source code from the webpage
        source_company = requests.get(url).text
        soup_company = BeautifulSoup(source_company, 'lxml')

        # Print heading
        print(f"{heading}")

        # Find all divs with the class 'pb_s_content'
        company_profile = soup_company.find_all('div', class_='pb_s_content')

        for content in company_profile:
            x = content.find('div', class_='ce_text')
            if x:  # Only print if x is not None
                print(x.get_text(strip=True))  # Print the text content only, removing extra whitespace

        print("\n" + "="*50 + "\n")  # Separator between company profiles


   # Social Media Links

def social_media():
    # Define the company name and the social media platforms to search
    company_name = "Electronica"  # Replace with the actual company name
    social_media_platforms = ['LinkedIn', 'Twitter', 'Facebook', 'YouTube']

    # Initialize a dictionary to hold the social media links
    social_media_links = {}

    # Search for each social media platform and store the first result
    for platform in social_media_platforms:
        query = f"{company_name} {platform}"  # Create the search query
        url = next(search(query, num_results=1), None)  # Get the first result or None
        if url:  # Check if a URL was found
            social_media_links[platform] = url

    # Print the found links
    for platform, link in social_media_links.items():
        print(f'{platform}: {link}')
        
    print("\n" + "="*50 + "\n")

def Company_indus():
    # Industry Categories
    source = requests.get('https://exhibitors.electronica.de/exhibitor-portal/2024/application-areas/').text

    soup = BeautifulSoup(source, 'lxml')

    industry = soup.find('div', class_='contOfNv_11').text.splitlines()

    filter_industry = [line.strip() for line in industry if line.strip()]

    for i in range(1, len(filter_industry), 2):
        application = filter_industry[i]
        exibitors = filter_industry[i+1]
        print(f"{application} : {exibitors}")



Company_name_url() # Calling Company Name and Url link
Company_address() # Adress and Location
Company_pro_service() # List of Products and their service, including exhibitors
Company_profile() # List of 15 company and there profile description
Company_indus() # Aplication of company
social_media() # Social media links fetched using Google search automation
