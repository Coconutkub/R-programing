## play function with DATAFRAME
##find mean

# refactor our code for more readability
cal_mean_by_col <- function(df) {
  col_names <- names(df)
  
  # we use [[]] to extract column as vector
  for (i in 1:ncol(df)) {
    avg_col <- mean(df[[i]]) 
    print(paste(col_names[i], ":", avg_col))
  }
}