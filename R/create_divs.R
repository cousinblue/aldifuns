#' Create divisions function
#'
#' Create a directory and sub-directory for each ALDI division.
#' @keywords divs
#' @export
#' @examples
#' create_divs(dir_path = getwd(), num = FALSE)

create_divs <- function(dir_path = getwd(), num = FALSE) {
  cat(paste0("Creating divisional sub-directories in ", dir_path, "..."))
  dir.create(path = dir_path, showWarnings = F)

  invisible(
    lapply(if (num == F) div_map$div_name else div_map$div_num,
         function(x) dir.create(paste(dir_path, x, sep = "/"), showWarnings = F))
  )
}
