\name{pack_down}
\alias{pack_down}
\title{put together records by adding records}
\usage{
pack_left()
}
\description{put together records by pasting records in the downward direction
}
\examples{
# down_pack 함수. 폐업원인 1, 2, 3 등으로 
# 여러개 있으면 해당 레코드를 복사해
# 데이터셋 아래에 붙여넣기해 폐업원인을 
# 추가로 기록하는 함수

# aj412s::pack_left()를 사용해 왼쪽으로 
# 레코드를 몰아준 데이터셋temp
# 더이터셋temp에 다른 변수를 추가함(b1,b2)
> temp
  a1 a2 a3 b1 b2
1  1 NA NA 52 76
2 17 NA NA 53 73
3  3 19 NA 54 75
4  4 49 NA 55 79
5 18  0 NA 56 78

# temp의 2번째 컬럼자료를 1번째 컬럼에 붙여넣고 2번째 컬럼은 NA로 채우기
> temp2 <- pack_down(temp, 2, 1)
> temp2
  a1 a2 a3 b1 b2
1  1 NA NA 52 76
2 17 NA NA 53 73
3  3 NA NA 54 75
4  4 NA NA 55 79
5 18 NA NA 56 78
6 19 NA NA 54 75
7 49 NA NA 55 79
8  0 NA NA 56 78

}