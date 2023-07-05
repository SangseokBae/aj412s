cor3 <- function(x, y, z=NULL, selecting_z=0){
 temp<-cbind(x,y,z)
 temp<-as.data.frame(temp)
 cat(' -------------------------------------------------------------------', '\n')
 cat(' How to use: cor3(df$conv, df$satprice)               No selection', '\n')
 cat(' How to use: cor3(df$conv, df$satprice, df$gender, 1) Selecting   ', '\n')
 cat(' -------------------------------------------------------------------', '\n')
 cat(' Number of Original Data:', nrow(temp), '\n')
 
 if(selecting_z==0) { tempx<-temp[complete.cases(temp), ] }
  else{ tempx<-temp[temp$z == selecting_z, ]
        tempx<-tempx[complete.cases(tempx), ]}
 
 tempx<-tempx[tempx$x != Inf, ]
 tempx<-tempx[tempx$x != -Inf, ]
 tempx<-tempx[tempx$y != Inf, ]
 tempx<-tempx[tempx$y != -Inf, ]
 tempx<-tempx[tempx$y != '', ]
 cat(' Number of data after refining:', nrow(tempx), '\n')
 answer <- cor(tempx$x, tempx$y)
 cat(' -------------------------------------------------------------------', '\n')
return(answer) }
