pkgListToInstall <- c("devtools",
                  "testthat",
                  "roxygen2",
                  "readr",
                  "stringr",
                  "stringi",
                  "ReporteRs")

sapply(X = pkgListToInstall, FUN = install.packages)

sapply(X = pkgListToInstall, FUN = library)
