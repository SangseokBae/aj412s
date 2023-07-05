\name{desc2all}
\alias{desc2all}
\title{Function of calculating mean,SD, and Quantile for all variables}
\usage{
desc2all()
}
\description{
Function of calculating mean, SD, and Quantile for all variables
}
\examples{

 library(aj412s)
 df<-BasicData
 
 # default of digtis=3
 desc2all(df)
 
 # Change digtis=5
 desc2all(df, 5)
 
}