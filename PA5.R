#cop2073c - PA5
#Kashari Denson
#06/22/2026
# creating a dataframe and reading/ writing to a csv file



# create a dataframe
myDataFrame <- data.frame(Type = 
                            c("Element 1", "Element 2"),
                          matrix(data = 1:4, 
                                 nrow = 2, 
                                 ncol = 2, 
                                 byrow = F,
                          dimnames = list(
                            c("A", "B"), 
                            c("A","B")
                            )
                          ))
myDataFrame

# write dataframe to a file 
writeFile <- write.table(x = myDataFrame, file = "C:/Users/kasha/Documents/Intro to Statistical Programming/PA5.csv", 
                         sep = " ", 
                         quote = FALSE, row.names=FALSE )

# removing myDataFrame
rm(myDataFrame)

# reading file PA5 to view dataframe

readFile <- read.csv(file = "C:/Users/kasha/Documents/Intro to Statistical Programming/PA5.csv", 
                        header = F, stringsAsFactors = F)

# view dataframe
View(readFile)