library("dplyr")

library("lubridate")

df <- data_frame(StartTime1 = "2017-04-28 12:50:45")

(df %>% mutate(StartTime2 = ymd_hms(StartTime1),
               StartTime3 = as_date(StartTime2)))



