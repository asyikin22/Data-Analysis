print("Beautiful Soup + requests")

from bs4 import BeautifulSoup
import requests, webbrowser

url = 'https://www.scrapethissite.com/pages/forms/'

response = requests.get(url)

if response.status_code == 200:
    print('Page fetched successfully!')
    
    # Use bs4 to parse the page and print the content using html.parser
    soup = BeautifulSoup(response.text, 'html.parser')

else:
    print(f'Failed to retrieve page. Status code: {response.status_code}')


# print(soup.prettify)
# # webbrowser.open(url) 

#Look for specific p element  
# p = soup.find('p', class_ = 'lead').text.strip()
# print(p)

#Look for teams' names on page 1
team_elements = soup.find_all('td', class_='name')

#iterate through each element and extract the text
for team_element in team_elements:
    team_name = team_element.text.strip()
    print(team_name)

