import urllib2
from bs4 import BeautifulSoup
import sys


quote_page = str(sys.argv[1])
page = urllib2.urlopen(quote_page)
soup = BeautifulSoup(page,'html.parser')
table1 = soup.find("table", {"class" : "tablesorter ratesTable"})
table2 = table1.find("tbody")
table3 = table2.find_all("tr")

for table in table3:
  with open("data.txt", "a") as myfile:
    myfile.write(str(table.findAll("td")[1].text))
    myfile.write(" ")
