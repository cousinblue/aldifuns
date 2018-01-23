#' Replace div numbers with div names
#'
#' This function allows you to replace a div number variable with the 3 letter abbreviated name.
#' @keywords divs
#' @export
#' @examples
#' div_names(x)

div_names <- function(x) {
  temp <- dplyr::left_join(x, div_map, by = c("div" = "div_num"))
  dplyr::select(temp, div_name, dplyr::everything(), -(div))
}
