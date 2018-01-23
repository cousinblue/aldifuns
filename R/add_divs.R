#' Add Divisions function
#'
#' This function allows you to add a divisions variable using a substring of business unit.
#' @keywords divs
#' @export
#' @examples
#' add_divs(x)

add_divs <- function(x) {
  temp <- dplyr::mutate(x, div = stringr::str_sub(bu, 1, 3))
  dplyr::select(temp, div, dplyr::everything())
}
