#' @title processAllFiles
#'
#' @name processAllFiles
#'
#' @aliases processAllFiles
#'
#' @description processAllFiles
#'
#' @param targetDir targetDir = "./data"

#' @return No data structure is returned.
#'
#' @examples processAllFiles <- function(targetDir)
#'
#' @export
#'
processAllFiles <- function(targetDir = "data") {
  filesList <- list.files(
    path = targetDir,
    pattern = "*.txt",
    full.names = T,
    recursive = F
  )
  lapply(filesList, function(x) {
    extractSegmentsSplitWithLB(fileName = x)
    }
  )
}
