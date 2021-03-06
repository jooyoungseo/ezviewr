#' view
#' @title Convenient function for viewing any rectangular data file in an Excel window.

#' @aliases view
#' @keywords view

#' @description You can use this function for loading any data.frame, data_frame, tbl_df, matrix, vector objects into your system-default spreadsheet software (e.g., Excel). This function has been inspired by \code{\link[BrailleR]{DataViewer}} and has implemented Hadley Wickham's \code{\link[readr]{write_csv}} instead of the default \code{\link[utils]{write.csv}} for a better performance.

#' @export view
#' @param x An object of class data.frame, matrix, or vector.
#' @param ... Any additional arguments available for \link[readr]{write_csv}.

#' @details
#' See example below.

#' @return Data object opened in a preferable spreadsheet application window.

#' @examples

#' if(interactive()) {
#' library(ezviewr)
#' data(airquality)
#' str(airquality)

#' ## View your data object in your spreadsheet software:
#' view(airquality)
#' # Then, when necessary, you can modify the opened data in the spreadsheet and save it as a new data.
#' }

#' @author JooYoung Seo, \email{jooyoung@psu.edu}
#' @author Soyoung Choi, \email{sxc940@psu.edu}

# Function starts:
view <- 
function(x, ...) {

      # only for interactive sessions
  if (interactive()) {
    if(is.matrix(x)) {
      x <- data.frame(x)
    }

    tmp <- tempfile(fileext = ".csv")
    readr::write_csv(x, tmp, ...)
    utils::browseURL(tmp)

    Sys.sleep(5)
    file <- readline("Enter the file name you want to save as (press enter to skip): ")

    if(file != "") {
      if(!stringr::str_detect(file, "(.csv)$")) {
        new_file <- paste0(file, ".csv")
      } else {
        new_file <- file
      }

      file.copy(from=tmp, to=paste0(getwd(), "/", new_file))
    return(readr::read_csv(new_file))
  }

    file.remove(tmp)
}  # end interactive
  else {
    warning("This function is only useful in interactive sessions running under Windows.")
}  # end not interactive
      invisible(NULL)
# Function ends.
}
