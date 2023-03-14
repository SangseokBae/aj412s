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

library(ggplot2)

# 막대그래프 그리기
국가<-c('미국','중국','일본','독일','영국','인도','프랑스','이탈리아','캐나다','대한민국' )
국내총생산<-c(22.99, 17.73, 4.93, 4.22, 2.18, 3.17, 2.93, 2.99, 1.99, 1.81)
인구수<-c('3.39','14.25','1.23','0.83','0.67','14.28','0.64','0.58','0.38','0.51')
Adata<-as.data.frame(cbind(국가, 국내총생산, 인구수))
Adata[,index]<-lapply(Adata[,index], as.numeric)
Adata$일인당국내총생산<-Adata$국내총생산/Adata$인구수

# 그래프 옵션조정 설명문
ggplot(Adata, aes(x=reorder(국가, -국내총생산), y=국내총생산)) 
+ geom_bar(stat='identity', fill='salmon') 
+ ggtitle('직업과 소득') # 타이틀
+ theme(plot.title = element_text(color='blue', size=30, face='bold')
+ xlab('국가') + ylab('국내총생산')
+ theme(axis.title.x = element_text(color='blue', size=30, face='bold')) # x축 타이틀
+ theme(axis.title.y = element_text(color='blue', size=30, face='bold')) # y축 타이틀
+ theme(axis.text.x=element_text(color='black', size=16, face='bold', angle=90)) # x축 눈금
+ theme(axis.text.y=element_text(color='black', size=16, face='bold')) # y축 눈금

# 실행 명령문: 문단 띄우기를 삭제해야만 실행됨
ggplot(Adata, aes(x=reorder(국가, -국내총생산), y=국내총생산)) + geom_bar(stat='identity', fill='salmon') + ggtitle('직업과 소득')+ theme(plot.title = element_text(color='blue', size=30, face='bold'))+ xlab('국가') + ylab('국내총생산')+ theme(axis.title.x = element_text(color='blue', size=30, face='bold')) + theme(axis.title.y = element_text(color='blue', size=30, face='bold'))+ theme(axis.text.x=element_text(color='black', size=16, face='bold', angle=90)) + theme(axis.text.y=element_text(color='black', size=16, face='bold'))

# 그래프 배열하기
library(gridExtra)
a<-ggplot(Adata, aes(x=국가, y=국내총생산)) + geom_bar(stat='identity', fill='salmon3', width=0.7)
b<-ggplot(Adata, aes(x=국가, y=인구수)) + geom_bar(stat='identity', fill='salmon3', width=0.7)
c<-ggplot(Adata, aes(x=국가, y=일인당국내총생산)) + geom_bar(stat='identity', fill='salmon3', width=0.7)
d<-ggplot(Adata, aes(x=국가, y=인구수)) + geom_bar(stat='identity', fill='salmon3', width=0.7)
grid.arrange(a,b,c,d, nrow=1, ncol=4)  

--------------------------------------------------------------------------------
# 산포도 그리기
ggplot(Adata, aes(x=V1, y=V2))+geom_point(color='gray2',size=4)
+ geom_smooth() 
+ xlab('전체')+ylab('담배꽁초') 
+ theme(axis.title.x = element_text(color='blue', size=30, face='bold')) # x축 타이틀
+ theme(axis.title.y = element_text(color='blue', size=30, face='bold')) # y축 타이틀
+ theme(axis.text.x=element_text(color='red', size=16, face='bold', angle=90)) # x축 눈금
+ theme(axis.text.y=element_text(color='red', size=16, face='bold')) # y축 눈금
+ geom_text(aes(label = round(V2,2))) # 데이터값 표시
+ ggtitle('화재원인:담배꽁초') # 타이틀
+ theme(plot.title = element_text(color='red', size=30, face='bold')) # 타이틀 폰트조정

ggplot(Adata, aes(x=V1, y=V2))+geom_point(color='blue',size=4) + geom_smooth() + xlab('전체') + ylab('담배꽁초') + theme(axis.title.x = element_text(color='blue', size=30, face='bold')) + theme(axis.title.y = element_text(color='blue', size=30, face='bold')) + theme(axis.text.x=element_text(color='red', size=16, face='bold', angle=90)) + theme(axis.text.y=element_text(color='red', size=16, face='bold')) + geom_text(aes(label = round(V2,2))) + ggtitle('화재원인:담배꽁초') + theme(plot.title = element_text(color='blue', size=30, face='bold'))

}