saveTable <-
function (x, file, HTML=FALSE) {
  if(HTML) {
    require(R2HTML)
    target <- HTMLInitFile(getwd(),filename=file)
    HTML("<br>Table X.<br>",file=target)
    HTML(x, file=target)
    HTMLEndFile()
  } else {
    require(rtf)
    if(length(grep(".rtf", file)) == 0 & length(grep(".doc", file)) == 0) {
      file <- paste(file, ".rtf", sep="")
    } else if (length(grep(".docx", file)) > 0) {
      file <- paste(file, ".rtf", sep="")
    }
    output <- file
    rtf <- RTF(output, font.size=8)
    addParagraph(rtf,"Table X.")
    addTable(rtf, x, row.names=TRUE, NA.string="")
    done(rtf)
  }
}
