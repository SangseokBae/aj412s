\name{mkdate_year}
\alias{mkdate_year}
\title{Making area time index for Differenced Panel Data}
\usage{
mkdate_year()
}
\description{
Making area time index for Differenced Panel Data
}
\examples{

mkdate_year(Adata, 시작연도, 끝연도)
AreaTime_index<-mkdate_year(Adata, 1995, 2003)
NewData<-cbind(AreaTime_index, 보조금, 교보금)

}