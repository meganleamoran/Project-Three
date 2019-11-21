#' Filters data from surveys
#' 
#' Filters the average weight of surveys data by year
#' 
#' @importFrom magrittr %>% 
#' @param surveys A dataframe containing a column you would like to summarize
#' @return weights A summary of the average weights
#' @export surveys_weight_by_year

surveys_weight_by_year <- function(surveys){ 
   mean_weight <- surveys %>% 
     filter(!is.na(weight)) %>% 
     group_by(year,species_id) %>% 
     summarize(mean_weight = mean(weight))
   return(mean_weight)
   }
