\name{e_ggplot}
\alias{e_ggplot}
\title{e_ggplot}
\usage{
e_ggplot()
}
\description{
e_ggplot Program
}
\examples{


library(dplyr); library(ggplot2); library(aj412s)

Adata<-read_excel('Data41_Time_Series_data3.xlsx', skip=1)
tmp<-mkdate(Adata$yearmonth)
Adata<-cbind(Adata, tmp)
  
경상수지<-Adata%>%group_by(year)%>%summarize(경상수지평균=mean(surplus))  
  
## ---------- geom_bar 설명 ------------

ggplot(data=경상수지, aes(x=year, y=경상수지평균))   
+ geom_bar(stat='identity', fill='steelblue', col='black')   
+ geom_text( data=경상수지, aes(y=경상수지평균, label = round(경상수지평균,0), vjust=-1, size=4) )   
+ theme(axis.text.x=element_text(color='black', size=13, angle=-40, vjust=-.5))   
+ theme(axis.text.y=element_text(color='black', size=13))   
+ scale_y_continuous(labels =scales:: comma)   
+ theme(axis.title=element_text(size=20,face='bold'))   
+ theme(axis.title.x = element_text(size=25,face='bold'))   
+ theme(axis.title.y = element_text(size=25,face='bold'))   
+ labs(x='연도', y='경상수지평균', title='연도별 경상수지평균')   
+ theme(legend.position = 'none')   
+ scale_y_continuous(labels =scales:: comma)  

## ---------- geom_line 설명 ------------

geom_line(mapping=aes(x=컬럼이름X,  
                        y=컬럼이름Y,  
                        group=컬럼이름K,  
                        linetype=컬럼이름K,  
                        color=컬럼이름K),  
			linewidth=숫자A, ...)  


코스피<-Adata%>%group_by(year)%>%summarize(KOSPI평균=mean(kospi))  
  
ggplot(data=코스피, aes(x=year, y=KOSPI평균))   
+ geom_line(group=1, col='red', linewidth=1)   
+ geom_point(col='red', size=3.0)   
+ geom_text( data=코스피, aes(y=KOSPI평균, label = round(KOSPI평균,0), vjust=-1, size=4) )   
+ theme(axis.text.x=element_text(color='black', size=13, angle=-40, vjust=-.5))   
+ scale_y_continuous(labels =scales:: comma)   
+ theme(axis.text.y=element_text(color='black', size=13))   
+ theme(axis.title=element_text(size=25,face='bold'))   
+ theme(axis.title.x = element_text(size=25,face='bold'))   
+ theme(axis.title.x = element_text(size=25,face='bold'))   
+ labs(x='연도', y='연간 KOSPI평균', title='연도별 KOSPI평균')   
+ theme(legend.position = 'none')   

# ---------- geom_point 그리기 -------------------

ggplot(mtcars) + geom_point(mapping=aes(x=disp, y=mpg, color=cyl, size=2.5)) + theme(axis.text.x=element_text(color='black', size=13, angle=-40, vjust=-.5)) + scale_y_continuous(labels =scales:: comma) + theme(axis.text.y=element_text(color='black', size=13)) + theme(axis.title=element_text(size=20,face='bold')) + theme(axis.title.x = element_text(size=25,face='bold')) + theme(axis.title.x = element_text(size=25,face='bold')) + labs(x='자동차 배기량', y='자동차 연비', title='배기량 대비 연비')


ggplot(mtcars)+geom_point(aes(x=disp, y=mpg, size=2.5)) + geom_smooth(aes(x=disp, y=mpg)) + theme(axis.text.x=element_text(color='black', size=13, angle=-40, vjust=-.5)) + scale_y_continuous(labels =scales:: comma) + theme(axis.text.y=element_text(color='black', size=13)) + theme(axis.title=element_text(size=20,face='bold')) + theme(axis.title.x = element_text(size=25,face='bold')) + theme(axis.title.x = element_text(size=25,face='bold')) + labs(x='자동차 배기량', y='자동차 연비', title='배기량 대비 연비') + theme(legend.position = 'none') 

# ----------- 그래프 배열하기 ----------------

library(gridExtra)
a<-ggplot(Adata, aes(x=국가, y=국내총생산)) + geom_bar(stat='identity', fill='salmon3', width=0.7)
b<-ggplot(Adata, aes(x=국가, y=인구수)) + geom_bar(stat='identity', fill='salmon3', width=0.7)
c<-ggplot(Adata, aes(x=국가, y=일인당국내총생산)) + geom_bar(stat='identity', fill='salmon3', width=0.7)
d<-ggplot(Adata, aes(x=국가, y=인구수)) + geom_bar(stat='identity', fill='salmon3', width=0.7)
grid.arrange(a,b,c,d, nrow=1, ncol=4)  


}