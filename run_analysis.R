library(reshape2)

file.sep <- .Platform$file.sep
dir.main <- "UCI HAR Dataset"
dir.test <- paste(dir.main,"test",sep=file.sep)
dir.train <- paste(dir.main,"train",sep=file.sep)
file.features <- paste(dir.main,"features.txt",sep=file.sep)
file.activitylabels <- paste(dir.main,"activity_labels.txt",sep=file.sep)

#get test data
 subject.test <- read.csv(paste(dir.test,"subject_test.txt",sep=file.sep),sep="",header=FALSE,stringsAsFactors=FALSE)
 y.test <- read.csv(paste(dir.test,"y_test.txt",sep=file.sep),sep="",header=FALSE,stringsAsFactors=FALSE)
 X.test <- read.csv(paste(dir.test,"X_test.txt",sep=file.sep),sep="",header=FALSE,stringsAsFactors=FALSE)
#get train data
subject.train <- read.csv(paste(dir.train,"subject_train.txt",sep=file.sep),sep="",header=FALSE,stringsAsFactors=FALSE)
 y.train <- read.csv(paste(dir.train,"y_train.txt",sep=file.sep),sep="",header=FALSE,stringsAsFactors=FALSE)
 X.train <- read.csv(paste(dir.train,"X_train.txt",sep=file.sep),sep="",header=FALSE,stringsAsFactors=FALSE)

#get features list
 features <- read.csv(file.features,sep="",header=FALSE,stringsAsFactors=FALSE)
#get activity labels
 activity.labels <- read.csv(file.activitylabels,sep="",header=FALSE,stringsAsFactors=FALSE)

grep.mean.and.std <- function(){
     # get only vriables coresponding to mean and standard deviation
     std.names <-grep("std",features[,2],value=TRUE)
     mean.names <-grep("mean",features[,2],value=TRUE)
     std.indexes <-grep("std",features[,2],value=FALSE)
     mean.indexes <-grep("mean",features[,2],value=FALSE)
     list(indexes=c(std.indexes,mean.indexes), names=c(std.names,mean.names) )
}

bind.test.train <- function(){
#4# Appropriately labels the data set with descriptive variable names.
# only first two columns subject and activity
    subject.name <- "subject"
    activity.name <- "activity"
    colnames(y.test) <-  c(activity.name)
    colnames(y.train) <- c(activity.name)
    colnames(subject.test) <- c(subject.name)
    colnames(subject.train) <- c(subject.name)
#1# Merges the training and the test sets to create one data set.
    test <- cbind(subject.test,y.test,X.test.fil)                                      
    train <- cbind(subject.train,y.train,X.train.fil)
    rbind(test,train)
}

#filter.X.test.train
#2# Merges the training and the test sets to create one data set.
#4# Appropriately labels the data set with descriptive variable names.

mean.std.columns <- grep.mean.and.std()
X.train.fil<- X.train[,mean.std.columns$indexes]
names(X.train.fil) <- mean.std.columns$names
X.test.fil <- X.test[,mean.std.columns$indexes]
names(X.test.fil) <- mean.std.columns$names

#1# Merges the training and the test sets to create one data set.
alldata <- bind.test.train()

#3#Uses descriptive activity names to name the activities in the data set
unlist(activity.labels[2])
ac.f <- factor(alldata$activity, labels = unlist(activity.labels[2]))
ac.str <- as.character(ac.f)

alldata$activity <- ac.str

#5# tidy data set
mm <- melt(alldata,id = c("subject","activity"))
tidydata <- dcast(mm,subject + activity ~ variable,mean)

write.table(tidydata, file="tidydataset.txt",row.names=FALSE)
