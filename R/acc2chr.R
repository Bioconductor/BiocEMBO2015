acc2chr <- function(x=TRUE)
{
    url <- "ftp://ftp.ncbi.nlm.nih.gov/genbank/genomes/Eukaryotes/vertebrates_mammals/Homo_sapiens/GRCh37/Primary_Assembly/assembled_chromosomes/chr2acc"
    df <- read.delim(url, sep="\t", header=FALSE, stringsAsFactors=FALSE)
    x <- setNames(sub(".*(CM[0-9.]+).*", "\\1", x), x)
    map <- setNames(paste0("chr", df[[1]]), df[[2]])[x]
    setNames(names(x), map)
}
