#' Making area and time index for differenced panel data
#' 

mkdate_year<-function(Adata, startyear, endyear){
ndata<-nrow(Adata)
T<-endyear-startyear+1
narea<-ndata/T
temp<-ndata/narea
temp<-temp-1
area<-rep(1:narea,temp )
time<-rep(1:(temp),narea)
time<-startyear+time
area<-sort(area)
area.time.data<-rbind(area, time)
area.time.data<-t(area.time.data)
return(area.time.data)}
