#' @title exportToWord
#'
#' @name exportToWord
#'
#' @aliases exportToWord
#'
#' @description exporting the data frame to a DOCX located in the "./export" dir.
#'
#' @param fileName fileName (in its base form, w/o the path)
#' @param output a data frame containing the segment index and the segment content
#'
#' @return No data structure is returned.
#'
#' @examples exportToWord(fileName = filename, output = output)
#'
#' @export

exportToWord <- function(fileName,
                         output) {
  if (!dir.exists("./export")) {
    dir.create("./export")
  }
  filePath <- file.path(paste0("./export/",
                               "SubtitlesSegmentsWithLB_",
                               basename(fileName),
                               ".docx"))
  doc <- ReporteRs::docx()
  doc <- ReporteRs::addTitle(doc,
                             paste("List Of Subtitles Text Segments Disgintegrated with Line Breaks For",
                                   basename(fileName)
                                   )
                             )

  fTable <- ReporteRs::FlexTable(data = output)
  # Zebra striped table
  fTable <- ReporteRs::setZebraStyle(fTable,
                                     odd = "#8A949B",
                                     even = "#FAFAFA" )
  doc <- ReporteRs::addFlexTable(doc,
                                 fTable,
                                 par.properties =
                                   ReporteRs::parProperties(
                                     text.align = "left")
  )

  ReporteRs::writeDoc(doc, file = filePath)
}
