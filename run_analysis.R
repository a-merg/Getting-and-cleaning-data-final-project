## Source dataset location

zipURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "UCI HAR Dataset"

## Download/Unzip dataset if it doesn't already exist.

if(!file.exists(zipFile)){
  download.file(zipURL, zipFile, method = "curl")
}

DataLoc <- "UCI HAR Dataset"
unzip(DataLoc)

## Read in test and train data sets

TestSubData <- read.table("./test/subject_test/txt")
TestXData <- read.table("./test/X_test/txt")
TestYData <- read.table("./test/Y_test/txt")
TrainSubData <- read.table("./train/subject_train/txt")
TrainXData <- read.table("./train/X_train/txt")
TrainYData <- read.table("./train/Y_train/txt")

## Read in features and activity datasets and reclass descriptive columns to characters

Features <- read.table("./features.txt")
Features[,2] <- as.character(Features[,2])

ActivityLabels <- read.table("./activity_labels.txt")
ActivityLabels[,2] <- as.character(ActivityLabels[,2])
colnames(ActivityLabels) <- c("ActivityID", "Activity")
)

## Merge test and train data sets

TestData <- cbind(TestSubData, TestYData, TestXData)
TrainData <- cbind(TrainSubData, TrainYData, TrainXData)
UCIData <- rbind(TestData, TrainData)
colnames(UCIData) <- c("Subject", "ActivityID", Features[,2])

## Subset for only Mean and Std Dev columns

UCIrel <- UCIData[, grep(pattern = ".*mean.*|.*std.*|.*Subject.*|.*ActivityID.*", colnames(UCIData))]

## Use descriptive activity labels where applicable in the data set 

UCImerged <- merge(UCIrel, ActivityLabels, by = "ActivityID")

## Appropriately label data set with descriptive variable names

UCIcols <- colnames(UCImerged)
NewCols <- gsub("[()]", "", UCIcols)
NewCols <- gsub("^t", "Time-", NewCols)
NewCols <- gsub("^f", "Freq-", NewCols)
NewCols <- gsub("BodyBody", "Body", NewCols)
NewCols <- gsub("Acc", "Accelerometer", NewCols)
NewCols <- gsub("Mag", "Magnitude", NewCols)
NewCols <- gsub("Gyro", "Gyroscope", NewCols)
NewCols <- gsub("mean", "MEAN", NewCols)
NewCols <- gsub("std", "STD", NewCols)

colnames(UCImerged)

## Create a second, independent tidy set with the average of each
## variable for each activity and each subject

UCIgrouped <- UCImerged %>% group_by(Subject, Activity)
UCIsummary <- summarize_all(UCIgrouped, funs(mean))
write.table(UCIsummary, "tidy.data.txt", row.names = FALSE)
