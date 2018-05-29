date_entered <- c5_time %>% select(date_entered) %>% pull() %>% ymd_hms()

dates <- c5_time %>% select(`Date Worked On`) %>% pull() %>% ymd(tz = "UTC")

(t <- date_entered - dates)


class(t)
hist(t %>% as.period() %>% time_length(unit = "hour"))
class(date_entered)
class(dates)
dates

date_entered                                                          
