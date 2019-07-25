if(!file.exists("./data")){dir.create("./data")}
fileUrl<-"http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile ="./data/UCI HAR Dataset.zip",method = "curl" )
unzip("./data/UCI HAR Dataset.zip",exdir ="./data")

#1.Merges the training and the test sets to create one data set.
library(dplyr)
features <- read.table("./data/UCI HAR Dataset/features.txt", col.names = c("n","functions"))
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt", col.names = "code")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt", col.names = "code")

x<-bind_rows(x_test,x_train)
y<-bind_rows(y_test,y_train)
subject <- bind_rows(subject_train, subject_test)
data<-bind_cols(subject,y,x)

#2.-Extracts only the measurements on the mean and standard deviation for each measurement.
colnames <- colnames(data)
meanandstd <- (grepl("code" , colnames) | grepl("subject" , colnames) | grepl("mean" , colnames) | grepl("std" , colnames)) 
meanstddata <- data[ , meanandstd == TRUE]

#3. Uses descriptive activity names to name the activities in the data set
meanstddata$code <- activity_labels[meanstddata$code, 2]

#4.Appropriately labels the data set with descriptive variable names.
names(meanstddata)<-gsub("^t", "time", names(meanstddata))
names(meanstddata)<-gsub("^f", "frequency", names(meanstddata))
names(meanstddata)<-gsub("Acc", "Accelerometer", names(meanstddata))
names(meanstddata)<-gsub("Gyro", "Gyroscope", names(meanstddata))
names(meanstddata)<-gsub("Mag", "Magnitude", names(meanstddata))
names(meanstddata)<-gsub("BodyBody", "Body", names(meanstddata))

#5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidydata<-aggregate(. ~subject + code, meanstddata, mean)
write.table(tidydata, "tidydata.txt")