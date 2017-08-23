my_packages = c("knitr", "rmarkdown")

install_if_missing = function(p) {
  if (p %in% rownames(installed.packages()) == FALSE) {
    install.packages(p)
  }
}

invisible(sapply(my_packages, install_if_missing))

library(knitr)
library(rmarkdown)
rmarkdown::render("df_intro.Rmd", "html_document")
