## challange 1
library(dplyr)
library(lubridate)
dane %>%
  filter(Series.or.Movie == "Movie", str_detect(Director, "Woody Allen")) %>%
  mutate(Release = parse_date_time(Release.Date, orders = c("dmy", "ymd", "mdy")) %>% as.Date()) %>%
  arrange(Release) %>%
  select(Title, Director, Release) %>%
  head(1)

