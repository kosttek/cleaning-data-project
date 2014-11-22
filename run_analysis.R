file.sep <- .Platform$file.sep
dir.main <- "UCI HAR Dataset"
dir.test <- paste(dir.main,"test",sep=file.sep)
dir.train <- paste(dir.main,"train",sep=file.sep)
file.features <- paste(dir.main,"features.txt",sep=file.sep)

#get test data
## subject.test <- read.csv(paste(dir.test,"subject_test.txt",sep=file.sep),sep="",header=FALSE,stringsAsFactors=FALSE)
## y.test <- read.csv(paste(dir.test,"y_test.txt",sep=file.sep),sep="",header=FALSE,stringsAsFactors=FALSE)
## X.test <- read.csv(paste(dir.test,"X_test.txt",sep=file.sep),sep="",header=FALSE,stringsAsFactors=FALSE)
## #get train data
## subject.train <- read.csv(paste(dir.train,"subject_train.txt",sep=file.sep),sep="",header=FALSE,stringsAsFactors=FALSE)
## y.train <- read.csv(paste(dir.train,"y_train.txt",sep=file.sep),sep="",header=FALSE,stringsAsFactors=FALSE)
## X.train <- read.csv(paste(dir.train,"X_train.txt",sep=file.sep),sep="",header=FALSE,stringsAsFactors=FALSE)
#get features list
 features <- read.csv(file.features,sep="",header=FALSE,stringsAsFactors=FALSE)

 grep.mean.and.std <- function(){
     std.indexes <-grep("std",features[,2],value=FALSE)
     mean.indexes <-grep("mean",features[,2],value=FALSE)
     c(std.indexes,mean.indexes)
}




bind.test.train <- function(){
    test <- cbind(subject.test,y.test,X.test.fil)                                      
    train <- cbind(subject.train,y.train,X.train.fil)
    rbind(test,train)
}

#filter.X.test.train

mean.std.columns <- grep.mean.and.std()
X.train.fil<- X.train[,mean.std.columns]
X.test.fil <- X.test[,mean.std.columns]

alldata <- bind.test.train()


