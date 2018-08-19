#!/bin/bash
  
start=2008-01-01

## Edit end date for today's date
end=2018-08-18

website="https://www.x-rates.com/historical/?from=EUR&amount=1&date="

while ! [[ $start > $end ]]; do
  python2 scrape1.py "$website$start"
  
  ##Sleep 1 ensures that you're only sending a request to the website
  ##once per second, otherwise you risk your IP getting banned.
  
  sleep 1
  echo " $start" >> data.txt
  start=$(gdate -d "$start + 1 day" +%F)
done
