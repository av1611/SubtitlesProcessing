#' @title extractSegmentsContainingAWord
#'
#' @name extractSegmentsContainingAWord
#'
#' @aliases extractSegmentsContainingAWord
#'
#' @description extractSegmentsContainingAWord
#'
#' @param fileName fileName (in its full form, with the path)
#' @param pattern pattern

#' @return No data structure is returned.
#'
#' @examples extractSegmentsContainingAWord(fileName = fileName)
#'
#' @export

extractSegmentsContainingAWord <- function(fileName,
                                           pattern) {
  rawText <- readr::read_file(file = file.path(fileName))
  rawTextSplit <- unlist(strsplit(x = rawText,
                                  split = "@"))
  rawTextSplit <- rawTextSplit[-1]

  grepRawText <- stringr::str_extract(string = rawTextSplit,
                                      pattern = pattern)
  if (any(!is.na(grepRawText))) {
    outputIndexes <- which(!is.na(grepRawText))

    outputDF <- data.frame(segmentIndex = outputIndexes,
                           segmentText = grepRawText[outputIndexes])

    exportToWord(fileName = basename(fileName),
                 output = outputDF)
  }
}

