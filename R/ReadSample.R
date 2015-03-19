##' ReadSample: read data. 
##'
##' Specifically designed to handle noisy data from amplified DNA on  Phenylketonuria (PKU) cards. The function is a pipeline using many subfunctions.
##' @title ReadSample
##' @return return data in data frame
##' @author Marcelo Bertalan
##' @export

ReadSample <- function(RawFile="Test.txt", skip=0, LCR=FALSE)
{
	library(data.table)
	CNV <- fread(RawFile, head=T, sep="\t", skip=skip)
	CNV <- as.data.frame(CNV)
	colnames(CNV) <- gsub(" ", ".", colnames(CNV))
	colnames(CNV)[colnames(CNV) %in% "Name"] <- "SNP.Name"
	CNV <- CNV[,c("SNP.Name","Chr", "Position", "Log.R.Ratio", "B.Allele.Freq")] # SNP.Name
	CNV <- subset(CNV, !Chr %in% c("MT", "X", "Y", "XY", "0"))
	CNV <- subset(CNV, !is.na(CNV$B.Allele.Freq))
	CNV <- subset(CNV, !is.na(CNV$Log.R.Ratio))
	if(LCR == TRUE)
	{
		CNV <- subset(CNV, !SNP.Name %in% LCR.SNPs) 
	}
	CNV$LRR <- CNV$Log.R.Ratio # CNV$LRR is the
	return(CNV)
}