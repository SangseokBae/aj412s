e_ggplot<-function(explaining=0){

if(explaining==0) {

cat("library(dplyr); library(ggplot2); library(aj412s)  ", '\n')
cat("  ", '\n')
cat("Adata<-read_excel('Data41_Time_Series_data3.xlsx', skip=1)  ", '\n')
cat("tmp<-mkdate(Adata$yearmonth)  ", '\n')
cat("Adata<-cbind(Adata, tmp)  ", '\n')
cat("  ", '\n')
cat("경상수지<-Adata%>%group_by(year)%>%summarize(경상수지평균=mean(surplus))  ", '\n')
cat("  ", '\n')
cat("ggplot(data=경상수지, aes(x=year, y=경상수지평균))   ", '\n')
cat("+ geom_bar(stat='identity', fill='steelblue', col='black')   ", '\n')
cat("+ geom_text( data=경상수지, aes(y=경상수지평균, label = round(경상수지평균,0), vjust=-1, size=4) )   ", '\n')
cat("+ theme(axis.text.x=element_text(color='black', size=13, angle=-40, vjust=-.5))   ", '\n')
cat("+ theme(axis.text.y=element_text(color='black', size=13))   ", '\n')
cat("+ theme(axis.title=element_text(size=15,face='bold'),title=element_text(size=20, face='bold'))   ", '\n')
cat("+ theme(axis.title.x = element_text(size=25,face='bold'))   ", '\n')
cat("+ theme(axis.title.y = element_text(size=25,face='bold'))   ", '\n')
cat("+ labs(x='연도', y='경상수지평균', title='연도별 경상수지평균')   ", '\n')
cat("+ theme(legend.position = 'none')   ", '\n')
cat("+ scale_y_continuous(labels =scales:: comma)  ", '\n')
cat("  ", '\n')

invisible(readline(prompt="Press [enter] to continue"))

cat("  ", '\n')
cat("geom_line(mapping=aes(x=컬럼이름X,  ", '\n')
cat("                        y=컬럼이름Y,  ", '\n')
cat("                        group=컬럼이름K,  ", '\n')
cat("                        linetype=컬럼이름K,  ", '\n')
cat("                        color=컬럼이름K),  ", '\n')
cat("			linewidth=숫자A, ...)  ", '\n')
cat("  ", '\n')
cat("코스피<-Adata%>%group_by(year)%>%summarize(KOSPI평균=mean(kospi))  ", '\n')
cat("  ", '\n')
cat("ggplot(data=코스피, aes(x=year, y=KOSPI평균))   ", '\n')
cat("+ geom_line(group=1, col='red', linewidth=1)   ", '\n')
cat("+ geom_point(col='red', size=3.0)   ", '\n')
cat("+ geom_text( data=코스피, aes(y=KOSPI평균, label = round(KOSPI평균,0), vjust=-1, size=4) )   ", '\n')
cat("+ theme(axis.text.x=element_text(color='black', size=13, angle=-40, vjust=-.5))   ", '\n')
cat("+ scale_y_continuous(labels =scales:: comma)   ", '\n')
cat("+ theme(axis.text.y=element_text(color='black', size=13))   ", '\n')
cat("+ theme(axis.title=element_text(size=25,face='bold'))   ", '\n')
cat("+ theme(axis.title.x = element_text(size=25,face='bold'))   ", '\n')
cat("+ theme(axis.title.x = element_text(size=25,face='bold'))   ", '\n')
cat("+ labs(x='연도', y='연간 KOSPI평균', title='연도별 KOSPI평균')   ", '\n')
cat("+ theme(legend.position = 'none')   ", '\n')
cat("  ", '\n')

invisible(readline(prompt="Press [enter] to continue"))

cat("  ", '\n')

# ---- 산포도 그리기 --------------------
mtcars : 1974년 모터트랜드 US 메거진에서 가져온 데이터로서 서른 두개 자동차의 특성
mpg=연비(hwy), cyl=엔진의 기통수, disp=배기량, hp=마력, drat=뒤차축비, wt=무게,
qsec=1/4mile 도달시간, vs=(0:V-엔진/1:Straight-엔진), am=변속기어(0:오토, 1=변속기어)
gear=전진기어 갯수, carb=캬뷰레터(기화기) 갯수,

ggplot(데이터A,
		aes=(x=컬럼이름X,
             y=컬럼이름Y))+
		geom_point()+ geom_smooth()

ggplot(data=mpg,mapping = aes(x=displ, y=hwy))
	+ geom_smooth()
	+ geom_point()

ggplot(mtcars)
+ geom_point(mapping=aes(x=disp, y=mpg, color=cyl, size=2.5)) 
+ theme(axis.text.x=element_text(color='black', size=13, angle=-40, vjust=-.5)) 
+ scale_y_continuous(labels =scales:: comma) 
+ theme(axis.text.y=element_text(color='black', size=13)) 
+ theme(axis.title=element_text(size=20,face='bold')) 
+ theme(axis.title.x = element_text(size=25,face='bold')) 
+ theme(axis.title.x = element_text(size=25,face='bold')) 
+ labs(x='자동차 배기량', y='자동차 연비', title='배기량 대비 연비')


ggplot(mtcars)+geom_point(aes(x=disp, y=mpg, size=2.5)) 
+ geom_smooth(aes(x=disp, y=mpg)) 
+ theme(axis.text.x=element_text(color='black', size=13, angle=-40, vjust=-.5)) 
+ scale_y_continuous(labels =scales:: comma) 
+ theme(axis.text.y=element_text(color='black', size=13)) 
+ theme(axis.title=element_text(size=20,face='bold')) 
+ theme(axis.title.x = element_text(size=25,face='bold')) 
+ theme(axis.title.x = element_text(size=25,face='bold')) 
+ labs(x='자동차 배기량', y='자동차 연비', title='배기량 대비 연비')
+ theme(legend.position = 'none') 



}}