#' Import study data 
#' 
#' Imports the study data from a csv file.
#' @param data.file.name Character vector of length 1. The name of the study
#'     data file. Defaults to NULL.
#' @param data.path Character vector of length 1. The path to the data
#'     directory. Defaults to "../data/"
#' @export
ImportStudyData <- function(data.file.name = NULL, data.path = "../data/") {
    ## Error handling
    if (is.null(data.file.name)) stop("You have to supply a data file name") 
    if (!is.character(data.file.name)) stop("The data file name has to be a character string")
    if (length(data.file.name) > 1) stop("The data file name has to be a character vector of length 1")
    ## Combine data_path and data_file_name into file_path
    file.path <- paste0(data.path, data.file.name)
    ## Import study data from a csv file
    study.data <- read.csv(file = file.path)
    return(study.data)
}
