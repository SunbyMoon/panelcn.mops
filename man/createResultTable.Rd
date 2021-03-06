% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/output.R
\name{createResultTable}
\alias{createResultTable}
\title{Creates a user readable result table for the test samples of the
genes of interest}
\usage{
createResultTable(resultlist, XandCB, countWindows, selectedGenes = NULL,
  sampleNames)
}
\arguments{
\item{resultlist}{result object of runPanelcnMops}

\item{XandCB}{GRanges object of combined  read counts of test samples and
control samples as returned by getRCRanges or countBamListInGRanges}

\item{countWindows}{data.frame with contents of a BED file as returned by
getWindows}

\item{selectedGenes}{vector of names of genes of interest that should be
displayed or NULL if all genes are of interest. Default = NULL}

\item{sampleNames}{names of the test samples (basename of the BAM files)}
}
\value{
a data.frame containing the results for the test samples within the
genes of interest
}
\description{
Creates a user readable result table for the test samples of the
genes of interest
}
\examples{
data(panelcn.mops)
XandCB <- test
elementMetadata(XandCB) <- cbind(elementMetadata(XandCB), 
                                elementMetadata(control))
sampleNames <- colnames(elementMetadata(test))
selectedGenes <- "ATM"
resulttable <- createResultTable(resultlist = resultlist, XandCB = XandCB, 
                                    countWindows = countWindows, 
                                    selectedGenes = selectedGenes, 
                                    sampleNames = sampleNames)
}
