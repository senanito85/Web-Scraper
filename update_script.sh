#!/bin/bash


DATE=`gdate +%Y-%m-%d`
website="https://www.x-rates.com/historical/?from=EUR&amount=1&date="
python2 scrape1.py "$website$DATE"
