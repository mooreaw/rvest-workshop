
library(tidyverse)

# data types

# numeric
1
1.22
1000
100000

# character 
"this is some text"
'this is also some text'

# logical
TRUE
FALSE

# missing values
NA

# structures

# vectors


# use c() to assemble vectors
c(1, 3, 6)

length(c(1, 3, 6))
class(c(1, 3, 6))

# what's gonna happen here?
c(1, "3", 6)

# what about here?
c(TRUE, 1, 8)

c(TRUE, FALSE, 1)

c(TRUE, "8", 1)

letters

letters[3:8]
length(letters)
letters[c(1, 3, 6)]

letters[1, 3, 6]


# data frames
head(mtcars)
tail(mtcars)

mydf <- data_frame(
  a = c("A", "b", "Andrew", "Jill"),
  b = 4:1
)

1 + 1
1 - 1
2 ^ 3
4 / 2
4 * 2

(4 + 2) * 2

2 == 2

4 == 2

4 != 2

TRUE & FALSE

TRUE | FALSE

# give me the cars that have an mpg lower than 20
# first 3 columns
mtcars[mtcars$mpg < 12, 1:3]

# this is actually a logical statement
mtcars$mpg < 12

mydf

mydf$a


# functions! --------------------------------------------------------------

# summary statistics
mean(mtcars$mpg)
sd(mtcars$mpg)
summary(mtcars$mpg)

# look at the data
glimpse(mtcars)

# look at the mpg dataset (it's in ggplot2)
head(mpg)

# count the number in a group
table(mpg$class, mpg$year)


# rvest -------------------------------------------------------------------

library(rvest)

xpth <- '//*[@id="mw-content-text"]/div/table[1]'

gini <- read_html("https://en.wikipedia.org/wiki/Gini_coefficient")
gini_tbl <- html_nodes(gini, xpath = xpth)

gtbl <- html_text(gini_tbl)
gtbl <- html_table(gini_tbl)
gtbl

gtbl <- gtbl[[1]]
gtbl <- set_names(gtbl, c("year", "gini"))

qplot(data = gtbl, x = year, y = gini)

qplot(data = gtbl[[1]], x = Year, y = `World Gini coefficients[10][30][34]`)



