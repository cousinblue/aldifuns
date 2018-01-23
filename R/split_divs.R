#' Split each div group to .csv file in pre-created subdirectories
#'
#' Call using do(split_divs_csv(., "P:/Directory", "Report Name"))
#' @keywords divs
#' @export
#' @examples
#' do(split_divs_csv(., "P:/Directory", "Report Name"))

split_divs_csv <- function(x, dir_path, file_name) {
  write.csv(x, paste0(dir_path, "/", unique(x$div_name), "/", unique(x$div_name), " ", file_name, ".csv"), row.names = FALSE, na = "")
}
