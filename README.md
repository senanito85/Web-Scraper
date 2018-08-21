# Web-Scraper
Python/Shell Web Scraper to get Historical Euro currency exchange rates

Historical exchange rates from the Euro to approximately 40 other currencies were taken from https://www.x-rates.com/historical/?from=EUR&amount=1&date=2008-01-01. This program will return in each line, an alphabetical listing and the data, of daily exchange rates going back from January 1st, 2008.   

In the command line, use "touch data.txt" to create the file to store the rates. If you're on macOS, make sure you're using the Linux version of gdate and that you have python2.7 installed. Edit the end date of the script.sh file for today's date and have installed version 4 of BeautifulSoup.


You need sudo privileges for this next step
To continously update your data.txt file, edit your crontab using:

    sudo crontab -e

Add the following to your crontab:

    0 18 * * * /path/to/your/directory/update_script.sh
    
Everyday at 6 o'clock, it will today's FOREX data to the file.


