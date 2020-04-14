# rroughviz

rroughviz

## Installation

``` r
devtools::install_github('tidyss/rroughviz')
```

## rough_bar

bar,barh,donut,pie are Same usage

``` r
library(rroughviz)
rough_bar(iris$Species)
```



## rough_barh

``` r
labels <- c('a','b')
values <- c(5,10)
rough_barh(labels = labels,values = values)
```



## rough_donut

``` r
rough_donut(iris$Species)
```



## rough_pie

``` r
rough_pie(iris$Species)
```


## rough_line

``` r
data <- women
rough_line(data)
```


## rough_scatter

``` r
rough_scatter(iris$Sepal.Length,iris$Sepal.Width)
```



## rough_stackedbar

``` r
data <- data.frame(
  month  = c('Jan','Fre'),
  A = c(10,20),
  B = c(5,10)
)
rough_stackedbar(data,labels = 'month')
```

