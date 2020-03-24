# SubtitlesProcessing

A stripped down version of the set of tools to process the array of subtitles TXT files, extracting the spots that meet either
1) the literal quote,
2) regexp expressions,
and exporting those spots to MS Word files, one DOC file for each TXT file.

Prerequisities (for Windows 10)
1. R interpreter. R is going to be the main thing we will have under the hood.
2. RStudio - IDE for R interpreter.

SubtitlesProccessing can be distributed in the form of a ready-to-be-installed archive/package to install from within RStudio using 'Tools' - 'Install packages' - 'Install from: Package Archive File (*.zip, *.tar.gz)'.

Please, take notice,
* "data" directory is empty (no wonder),
* part of the functions used in production have been dropped down too.
