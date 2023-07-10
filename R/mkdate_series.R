mkdate_series<-function(df, start_y, start_m, mq ){

if (base::missing(df)) {
	    cat("  Input date format: start_y=2001, start_m=4, 1=monthly or 2=quarterly data  ", '\n')
		return(cat("  df<-mkdate_series(df, 2001, 4, 1)   ") )  }

df<-as.data.frame(df)
n<-nrow(df)
tmp1<-rep(NA,n)
tmp2<-rep(NA,n)
tmp3<-rep(NA,n)

if(mq==1) {
for(i in 1:n){
if(start_m==12) 
{tmp2[i]<-start_m
start_m<-1 
tmp1[i]<-start_y
start_y<-start_y+1}
else{
tmp2[i]<-start_m
start_m<-start_m+1
tmp1[i]<-start_y
} }

tmp1<-as.character(tmp1)
tmp2<-as.character(tmp2)

for (i in 1:n){
if(nchar(tmp2[i])==1) {
tmp2[i]<-paste0('0', tmp2[i], sep='')
} }
}


if(mq==2) {
for(i in 1:n){
if(start_m==4) 
{tmp2[i]<-start_m
start_m<-1 
tmp1[i]<-start_y
start_y<-start_y+1}
else{
tmp2[i]<-start_m
start_m<-start_m+1
tmp1[i]<-start_y
} }

tmp1<-as.character(tmp1)
tmp2<-as.character(tmp2)

for (i in 1:n){
if(nchar(tmp2[i])==1) {
tmp2[i]<-paste0('0', tmp2[i], sep='')
} }
}


for (i in 1:n){
tmp3[i]<-paste0( tmp1[i], '-',tmp2[i], '-01', sep='')
}

DATE_series<-as.Date(tmp3)

df<-cbind(df, DATE_series)
return(df)

}


