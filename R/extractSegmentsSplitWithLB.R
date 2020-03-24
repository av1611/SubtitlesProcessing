#' @title extractSegmentsSplitWithLB
#'
#' @name extractSegmentsSplitWithLB
#'
#' @aliases extractSegmentsSplitWithLB
#'
#' @description extractSegmentsSplitWithLB
#'
#' @param fileName fileName (in its full form, with the path)

#' @return No data structure is returned.
#'
#' @examples extractSegmentsSplitWithLB(fileName = fileName)
#'
#' @export

extractSegmentsSplitWithLB <- function(fileName) {
  rawText <- readr::read_file(file = file.path(fileName))
  rawTextSplit <- unlist(strsplit(x = rawText,
                                  split = "@"))
  rawTextSplit <- rawTextSplit[-1]

  grepRawText <- stringr::str_extract(string = rawTextSplit,
                             pattern = ".+\n+.+") # line breaks

    if (any(!is.na(grepRawText))) {
  outputIndexes <- which(!is.na(grepRawText))

  outputDF <- data.frame(segmentIndex = outputIndexes,
                         segmentText = grepRawText[outputIndexes])

  exportToWord(fileName = basename(fileName),
               output = outputDF)
  }
}

