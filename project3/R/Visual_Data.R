#' Graphs filtered data from surveys
#' 
#' Graphs the average weight of surveys data by year
#' 
#' @param output name of function used to filer data
#' @return plot A visual of the filtered data
#' @export surveys_plot



surveys_plot <- function(output){
   plot1 <- ggplot(data = output, mapping = aes(x = year, y = mean_weight, color= species_id)) +geom_line()
   return(plot1)
   }
