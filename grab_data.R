library(tidyverse)
library(rvest)

estate_url <- read_html("https://oakville.listing.ca/real-estate-price-history.htm")


raw_data <- estate_url %>% 
  html_elements("table:nth-child(26) , table:nth-child(24), table:nth-child(22), table:nth-child(20), table:nth-child(18), table:nth-child(16), table:nth-child(14), table:nth-child(28), table:nth-child(12), table:nth-child(10)") %>% 
  html_text2() %>% 
  as_tibble()

raw_data[1]
