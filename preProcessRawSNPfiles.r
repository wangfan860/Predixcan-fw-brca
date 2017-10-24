#' This file will take the raw SNP data, which is spread across a bunch of disparate files in a non-usable format and it will load it into a matrix of rsID x TCGA id, which we can use for downstream analysis.


#' Load the mappings of TCGA file names to TCGA IDs. There were retrieved using the following query (with assistance from GDC help desk): https://gdc-api.nci.nih.gov/legacy/files?format=tsv&size=10000&fields=file_name,file_id,cases.samples.portions.analytes.aliquots.submitter_id&filters=%7B%22op%22%3A%22and%22%2C%22content%22%3A%5B%7B%22op%22%3A%22in%22%2C%22content%22%3A%7B%22field%22%3A%22files.platform%22%2C%22value%22%3A%5B%22Affymetrix+SNP+Array+6.0%22%5D%7D%7D%2C%7B%22op%22%3A%22in%22%2C%22content%22%3A%7B%22field%22%3A%22cases.project.primary_site%22%2C%22value%22%3A%5B%22Breast%22%5D%7D%7D%2C%7B%22op%22%3A%22in%22%2C%22content%22%3A%7B%22field%22%3A%22files.data_type%22%2C%22value%22%3A%5B%22Genotypes%22%5D%7D%7D%5D%7D
theMap <- read.delim("/mnt/data_scratch/prediXcanProj/data/genotypes/birdsuite_metadata/GenomeWideSNP_6.rs_snp_map", as.is=T)
rsIds <- theMap[,1]
names(rsIds) <- theMap[,2]

# This file contains the actual genotypes
theAlleles <- read.delim("/mnt/data_scratch/prediXcanProj/data/genotypes/birdsuite_metadata/GenomeWideSNP_6_alleles.csv", as.is=T)

# Write out a dataframe that has affy snp ids
alleleData <- cbind(theAlleles, rsIds[theAlleles[,1]])
alleleData_fin <- alleleData[-which(is.na(alleleData[,4])), c(4,2,3)]
# save(alleleData_fin, file="/mnt/data_scratch/prediXcanProj/data/genotypes/alleleData_fin.RData")


#' Load the file that maps the file names to the TCGA names.
fNameToTcga <- read.delim("/mnt/data_scratch/prediXcanProj/data/genotypes/tcgaFileNameToTcgaIdMapping.txt", as.is=T)
tcgaIds <- fNameToTcga[,3]
names(tcgaIds) <- fNameToTcga[,2]

#' Iterate through the individual files and load into a big matrix. It seems I have downloaded genotype data called from both tumor and normal samples.
setwd("/mnt/data_scratch/prediXcanProj/data/genotypes/rawGenotypes/")
folderNames <- dir()
genotypesList <- list()
fileNamesList <- list()
callsList <- list()
confidenceList <- list()
for(i in 1:length(folderNames))
{
  filesInThisFolder <- dir(folderNames[i])
  dataFileName <- filesInThisFolder[grep(".data.txt", filesInThisFolder)]
  fileNamesList[[i]] <- dataFileName
  theData <- read.delim(paste(folderNames[i], "/", dataFileName, sep=""), as.is=T)[-1,]
  callsList[[i]] <- as.numeric(theData[,2])
  names(callsList[[i]]) <- theData[,1]
  confidenceList[[i]] <- as.numeric(theData[,3])
  names(confidenceList[[i]]) <- theData[,1]
  print(i)
}

#' Convert these lists to matrices...
callsMatrix <- do.call(cbind, callsList)
colnames(callsMatrix) <- unlist(fileNamesList)
confidenceMatrix <- do.call(cbind, confidenceList)
colnames(confidenceMatrix) <- unlist(fileNamesList)

#' Map the rsIds onto the rownames in the matrix...
rsIdsOrd <- rsIds[rownames(callsMatrix)]
rownames(callsMatrix) <- rsIds[rownames(callsMatrix)]
rownames(confidenceMatrix) <- rsIds[rownames(confidenceMatrix)]

#' Map the "file names" that are currently the column names to TCGA IDs.
colnames(callsMatrix) <- tcgaIds[colnames(callsMatrix)]
colnames(confidenceMatrix) <- tcgaIds[colnames(confidenceMatrix)]


#' For some reason there's a duplicated samples, but the genotypes don't match. Hmmm. I will need to make sure everything is okay here.
which(tcgaIds[colnames(callsMatrix)] == "TCGA-EW-A424-10A-01D-A242-01")
# CROZE_p_TCGA_254_256_255_N_GenomeWideSNP_6_A03_1301360.birdseed.data.txt 
#                                                                      309 
# CROZE_p_TCGA_254_256_255_N_GenomeWideSNP_6_A02_1301374.birdseed.data.txt 
#                                                                     1693 
sum(callsMatrix[,309] != callsMatrix[,1693])
# [1] 424042


#' Save matrices separately beacuse these are huge.
save(callsMatrix, file="/mnt/data_scratch/prediXcanProj/data/genotypes/geneotypeMatrices/callsMatrix.RData")
save(confidenceMatrix, file="/mnt/data_scratch/prediXcanProj/data/genotypes/geneotypeMatrices/confidenceMatrix.RData")




#### New addition: I also want to do this for melenoma, lusc and luad data.

#' Iterate through the individual files and load into a big matrix. It seems I have downloaded genotype data called from both tumor and normal samples.
getSnpData <- function(theWd)
{
  setwd(theWd)
  folderNames <- dir()
  genotypesList <- list()
  fileNamesList <- list()
  callsList <- list()
  confidenceList <- list()
  for(i in 1:length(folderNames))
  {
    filesInThisFolder <- dir(folderNames[i])
    dataFileName <- filesInThisFolder[grep(".data.txt", filesInThisFolder)]
    fileNamesList[[i]] <- dataFileName
    theData <- read.delim(paste(folderNames[i], "/", dataFileName, sep=""), as.is=T)[-1,]
    callsList[[i]] <- as.numeric(theData[,2])
    names(callsList[[i]]) <- theData[,1]
    confidenceList[[i]] <- as.numeric(theData[,3])
    names(confidenceList[[i]]) <- theData[,1]
    print(i)
  }

  #' Convert these lists to matrices...
  callsMatrix <- do.call(cbind, callsList)
  colnames(callsMatrix) <- unlist(fileNamesList)
  confidenceMatrix <- do.call(cbind, confidenceList)
  colnames(confidenceMatrix) <- unlist(fileNamesList)

  #' Map the rsIds onto the rownames in the matrix...
  rsIdsOrd <- rsIds[rownames(callsMatrix)]
  rownames(callsMatrix) <- rsIds[rownames(callsMatrix)]
  rownames(confidenceMatrix) <- rsIds[rownames(confidenceMatrix)]

  return(list(callsMatrix=callsMatrix, confidenceList=confidenceMatrix))
}

melSnpsData <- getSnpData("/mnt/data_scratch/prediXcanProj/data/genotypes/manifests/melenoma/")
luadSnpsData <- getSnpData("/mnt/data_scratch/prediXcanProj/data/genotypes/manifests/luad/")
luscSnpsData <- getSnpData("/mnt/data_scratch/prediXcanProj/data/genotypes/manifests/lusc/") # I deleted one of the downloaded folders "5812e4a5-1e89-43ec-aa51-34657b5f7f8e" as it didn't seemt o contain the correct type of files. I don't know why.


# I need to put the correct column names on these. The mapping of the folder names to the TCGA Ids was in the original "manifest" files downloaded from the GDC website. 
melMapping <- read.delim("/mnt/data_scratch/prediXcanProj/data/genotypes/manifests/originalManifestFilesWithNameMappnig/Melanoma_469files.txt", as.is=T)
luadMapping <- read.delim("/mnt/data_scratch/prediXcanProj/data/genotypes/manifests/originalManifestFilesWithNameMappnig/LUAD_420files.txt")
luscMapping <- read.delim("/mnt/data_scratch/prediXcanProj/data/genotypes/manifests/originalManifestFilesWithNameMappnig/LUSC_318files.txt")

# Use the correct column names, i.e. the TCGA ids
melMappingTcgaIds <- melMapping[,1]
names(melMappingTcgaIds) <- melMapping[,2]
colnames(melSnpsData$callsMatrix) <- melMappingTcgaIds[dir("/mnt/data_scratch/prediXcanProj/data/genotypes/manifests/melenoma/")]
colnames(melSnpsData$confidenceList) <- melMappingTcgaIds[dir("/mnt/data_scratch/prediXcanProj/data/genotypes/manifests/melenoma/")]



save(melSnpsData, file="/mnt/data_scratch/prediXcanProj/data/genotypes/geneotypeMatrices/melSnpsData.RData")
save(luadSnpsData, file="/mnt/data_scratch/prediXcanProj/data/genotypes/geneotypeMatrices/luadSnpsData.RData")
save(luscSnpsData, file="/mnt/data_scratch/prediXcanProj/data/genotypes/geneotypeMatrices/luscSnpsData.RData")









