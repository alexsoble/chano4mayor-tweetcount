# What this does?

Track how many people are asking for Chance the Rapper to be mayor of Chicago.

# How does it work?


```
*/10 * * * * ruby chano-tweet-scraper.rb > tweetcount_current.csv && cat tweetcount_current.csv >> tweetcount_historical.csv
```

