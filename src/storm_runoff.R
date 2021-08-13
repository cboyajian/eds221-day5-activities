

#' Estimate Volume of Expected Stormwater Runoff
#' 
#' This function estimates the volume in cubic feet of expected stormwater runoff given the fraction of the watershed that is considered "impervious" and the total watershed area in acres. 
#'
#' @param imperv_fraction A unitless number that represents the fraction of the watershed that is considered "impervious."
#' @param watershed_area The total number of acres of the watershed.
#'
#' @return
#' @export
#'
#' @examples
predict_runoff <- function(imperv_fraction, watershed_area) {
  runoff_coeff <- 0.05 + (0.9 * imperv_fraction)
  runoff_volumn <- 3630 * 1 * runoff_coeff * watershed_area
  
  return(runoff_volumn)
}

predict_runoff(imperv_fraction = 10, watershed_area = 100)
