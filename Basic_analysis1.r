install.packages("tidyverse")
library("tidyverse")

# Checking the dataset
head(diamonds) # Gives the first few values of the dataset
glimpse(diamonds)# Give the sumary of the data set
str(diamonds) # Give the sumary of the data set
colnames(diamonds) # Gives the column name

#Cleaning the dataset

rename(diamonds, carat_new = carat) # to rename the columns or variable
head(diamonds)
# we can also rename more then 1 variables or coulmns using rename()
rename(diamonds, carat_new = carat, cut_new = cut)

# To summarize the dataset
summarise(diamonds, mean_carat = mean(carat)) # to get the mean value of the column
summarise(diamonds, mean_carat = mode(carat)) # Need to check mode is avaliable are not !!

#Visualizing data

ggplot(data = diamonds, aes(x= carat, y = price)) + geom_point()

#ggplot more easy way to visulaize the value which plot present in tidyverse library
ggplot(data = diamonds, aes(x= carat, y = price,color = cut)) + geom_point()
facet_wrap(~cut)

#which documenting
# we can se '##' to make markdown make proper text fomrat to discirbe work which another way then commenting
## This is markdown text

