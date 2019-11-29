##$$$
#
# R프로그래밍 1일차
#
# first.R
#
# 작성자 : 김주현
#
# 최초작성일 : 2019.11.26
#
#
print("Hello, World!")

number <- 10 
number2 = 100

number3 <- number


numbervalue <- 1                # came 표기법
str_value <- "R Language"       # Snake 표기법
booleanvalue <- TRUE            # R은 대소를 구분한다.

numbervalue <- "R script"
numbervalue <- 1

print(numbervalue)
print(str_value)
print(booleanvalue)


cat( "Numeric number : ", numbervalue, "\n" )   # Escape Character 제어문자, 읽기 기능
cat( "string : ", str_value, "\n" )             # '\n' :줄바꿈
cat( "Boolean value : ", booleanvalue, "\n" )   # '\t' : tab 간격


numbervalue <- scan()
cat( "Numberic number : ", numbervalue, "\n")

number1 <- 10
number2 <- 20
resultAdd <- number1 + number2
resultSub <- number1 - number2
resultMul <- number1 * number2
resultDiv <- number1 / number2
resultRem <- number2 %% number1
resultSec <- number2 ^ 5          # '^' 대신 '**' 가능

print(resultAdd)
print(resultSub)
print(resultMul)
print(resultDiv)
print(resultRem)
print(resultSec)

number1 <- 0
number1 <- number1 + 10
number1
number1 <- number1 + 10
number1
number1 <- number1 + 10     # 누적 형태
number1

number2 <- 100
number1 <- number2 + 10     # 치환 형태
number1
number2


print( (number1 + 10)*number2/2 )



number300 <- number300 + 10   #에러: 객체 'number300'를 찾을 수 없습니다 : 런타임에러
number300                     #초기값 설정해야함


#누적을 할 때 주의점=> 반드시 [초기값] 설정 되어 있어야함.


#치환이므로 가능. number300 값 주어져 있음.

number301 <- number300 * 2
number301



# 관계연산자 (대소비교) -> 결과: 논리형

number1 <- 10.5
number2 <- 10
print( number > number2 )
print( number2 >= number2 )
print( number < number2 )
print( number <= number2 )
print( number == number2 )
print( number != number2 )


# 논리연산자

print( number1 > 10 & number2 > 10 )    # AND
print( number1 > 10 | number2 > 10 )    # OR
print( !( number1 > 10 ) )              # NOT



# 숫자형, 문자형 연산은 되지 않는다. 반드시 같은 형태만 연산 가능

number <- 100
str <- number + str
result = number + str
print( result )


# R은 문자형이라도 연산자 쓸 수 없다!

number <- '100'
str <- 'R Language'
result = number + str
print( result )


#
# 제어구조 - 선택구조
#

job.type <- 'A'
                              # 둘중 하나 택,양자택일 구조
if ( job.type == 'B' ) {      # {}:code block ,코드집합
  bonus <- 200              # '참' 일 때
} else {              
  bonus <- 100              # '거짓' 일 때
}
cat( "joy type : ", job.type, "\t\tbonus : ", bonus ) # \t 2개-> 8칸 띄움



job.type <- 'B'

if ( job.type == 'A') {
  bonus <- 200                # 단순구조
}
cat( "job type : ", job.type, "\t\tbonus : ", bonus )


score <- 85

if ( score >= 90 ) {          # 선택구조 (다중선택구조)
  grade <- 'A'                # 다중선택일 때 조건문 순서 중요함, 오류나면 찾기 어렵
} else if ( score >= 80) {    
  grade <- 'B'
} else if ( Score >= 70) {
  grade <- 'C'
} else if ( score >= 60) {
  grade <- 'D'
} else {
  grade <- 'F'
}
cat( "score : ", score, "\t\tgrade : ", grade )


number <- 6

if ( number %% 2 != 0 ) {
  ans <- '홀수'
} else {
  ans <-  '짝수'
}
cat(number, "는", ans, "입니다.")


#정답

number <- 10
remainder <- number %% 2

if ( remainder == 0 ) {
  ans <- '짝수'
} else {
  ans <-  '홀수'
}

cat( "number : ", number, "는", ans,"이다.")





a <- 5
b <- 20

if ( a > 5 & b > 5) {
  cat( a, " > 5 and ", b, " > 5 " )
} else {
  cat( a, " <=5 or ", b, " <= 5 " )
}

# R은 else 를 줄바꿈으로 표현하면 실행X (R문법)


a <- 10
b <- 20

if ( a > b ) {
  c <- a
} else {
  c <- b
}
cat( "a = ", a, "\tb = ", b, "\tc = ", c )


c <- ifelse( a > b, a, b )        # 'ifelse' 함수를 이용
cat( "a = ", a, "\tb = ", b, "\tc = ", c )


help( ifelse )


#####


max <- max(a,b,c)
print(max)
cat(max)


a <- 10
b <- 10
c <- 8

p1 <- ifelse( a>b, a, b )
p2 <- ifelse( b>c, b, c )
max <- ifelse ( p1 > p2, p1, p2 )
cat(max)


#정답

a <- 5
b <- 8
c <- 10
max <- a

if ( b > max ){
  max = b
}
if ( c > max ){
  max = c
}
cat("a= ", a, "b= ", b, "c= ", c, "max= ", max)



##### 반복구조

# for 문

for ( i in 1:10) {
  print( i )
}

for ( i in 1:10) {
  print( '*' )
}

multiple = 2
for ( i in 1:10 ) {
  cat( multiple, 'X',i,"=", multiple * i, '\n' )
}


# while 문

i <- 1
while ( i <=  10 ) {
  print( i )
  i <- i + 1
}

multiple <- 2
i <- 2
while ( i <= 9 ) {
  cat( multiple, 'X', i, '=', multiple*i, '\n' )
  i <- i + 1
}

# while 문은 반복 제어 변수 무조건 설정해야 함.
# while 문이 거짓이 되면 반복문 빠져나감.




for ( j in 1:10 ) {
  for ( i in 1:10 ) {
    cat( i, '\n')
  } 
}




# 정답

linecount <- 1        # 초기값
for ( i in 1:100 ) {
  cat( i, ' ' )
  linecount <- linecount + 1
  if ( linecount > 10 ) {
    print( '\n' )
    linecount <- 1  # Reset
  }
}


# 정답

for ( i in 1:100 ) {
  cat( i, ' ' )
  if( i %% 10 == 0 ) {
    print( '\n' )
  }
}=


for ( i in 1:100 ) {
  cat( i )
}



#
i <- 1
count <- 0
lineCount <- 1
multiple3 <- NULL
multiple5 <- NULL
while ( i <= 1000 ) {
  multiple3 <- i %% 3
  multiple5 <- i %% 5
  if ( multiple3 == 0 | multiple5 == 0 ) {
    count <- count + 1
    cat( i, " " )
    lineCount <- lineCount + 1
    if ( lineCount > 10 ) {
      lineCount <- 1
      print( '\n' )
    }
  }
  i <- i + 1    #무한반복 빠져나가기.
}
print( '\n' )
cat( '1~1000사이의 3애 배수와 5의 배수의 개수 : ', count, '\n' )







