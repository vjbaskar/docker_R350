chooseCRANmirror(graphics=FALSE, ind=87)
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install(version = "3.8")


packages_to_install = c("dplyr", "ggplot2", "openxlsx", "NOISeq","rtracklayer","gplots")
BiocManager::install(packages_to_install)
