file.sep <- .Platform$file.sep
dir.main <- "UCI HAR Dataset"
dir.test <- paste(dir.main,"test",sep=file.sep)
dir.train <- paste(dir.main,"train",sep=file.sep)
dir.features <- paste(dir.main,"features.txt",sep=file.sep)

#get test data
## subject.test <- read.csv(paste(dir.test,"subject_test.txt",sep=file.sep),sep="",header=FALSE,stringsAsFactors=FALSE)
## y.test <- read.csv(paste(dir.test,"y_test.txt",sep=file.sep),sep="",header=FALSE,stringsAsFactors=FALSE)
## X.test <- read.csv(paste(dir.test,"X_test.txt",sep=file.sep),sep="",header=FALSE,stringsAsFactors=FALSE)
## #get train data
## subject.train <- read.csv(paste(dir.train,"subject_train.txt",sep=file.sep),sep="",header=FALSE,stringsAsFactors=FALSE)
## y.train <- read.csv(paste(dir.train,"y_train.txt",sep=file.sep),sep="",header=FALSE,stringsAsFactors=FALSE)
## X.train <- read.csv(paste(dir.train,"X_train.txt",sep=file.sep),sep="",header=FALSE,stringsAsFactors=FALSE)

bind.test.train <- function(){
    test <- cbind(subject.test,y.test,X.test)                                      
    train <- cbind(subject.train,y.train,X.train)
    rbind(test,train)
}

alldata <- bind.test.train()


