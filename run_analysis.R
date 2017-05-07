#The following one R script called run_analysis.R that does the following.

#Merges the training and the test sets to create one data set.
#Extracts only the measurements on the mean and standard deviation for each measurement.
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names.
#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


#Importing all the 8 text files into R: (Line 2 to Line 66)

activity_labels <- read.table(file="G:/Data Science Project/Getting and Cleaning Data/Project Assignment/UCI HAR Dataset/activity_labels.txt"
                              ,sep = " "
                              ,col.names = c("id","activity name")
                              ,stringsAsFactors = FALSE
                              )

str(activity_labels)

features <- read.table(file="G:/Data Science Project/Getting and Cleaning Data/Project Assignment/UCI HAR Dataset/features.txt"
                       ,sep = " "
                       ,col.names = c("id","name")
                       ,stringsAsFactors = FALSE
)

str(features)


y_test <- read.table(file="G:/Data Science Project/Getting and Cleaning Data/Project Assignment/UCI HAR Dataset/test/y_test.txt"
                       ,sep = " "
                       ,col.names = c("id")
                       ,stringsAsFactors = FALSE
)
str(y_test)


subject_test <- read.table(file="G:/Data Science Project/Getting and Cleaning Data/Project Assignment/UCI HAR Dataset/test/subject_test.txt"
                     ,sep = " "
                     ,col.names = c("subjectid")
                     ,stringsAsFactors = FALSE
)
str(subject_test)

x_test <- read.table(file="G:/Data Science Project/Getting and Cleaning Data/Project Assignment/UCI HAR Dataset/test/X_test.txt"
                     ,stringsAsFactors = FALSE
                     ,fill = TRUE
                     ,blank.lines.skip = TRUE
)
str(x_test)
sum(is.na(x_test))


y_train <- read.table(file="G:/Data Science Project/Getting and Cleaning Data/Project Assignment/UCI HAR Dataset/train/y_train.txt"
                     ,sep = " "
                     ,col.names = c("id")
                     ,stringsAsFactors = FALSE
)
str(y_train)
sum(is.na(y_train))

subject_train <- read.table(file="G:/Data Science Project/Getting and Cleaning Data/Project Assignment/UCI HAR Dataset/train/subject_train.txt"
                           ,sep = " "
                           ,col.names = c("subjectid")
                           ,stringsAsFactors = FALSE
)
str(subject_train)
sum(is.na(subject_train))

x_train <- read.table(file="G:/Data Science Project/Getting and Cleaning Data/Project Assignment/UCI HAR Dataset/train/X_train.txt"
                     ,stringsAsFactors = FALSE
                     ,fill = TRUE
                     ,blank.lines.skip = TRUE
)
str(x_train)
sum(is.na(x_train))


#1. Merges the training and the test sets to create one data set.

Master_data<- rbind.data.frame(x_train,x_test)


#2. Extracts only the measurements on the mean and standard deviation for each measurement.

select_measure <- grepl(pattern = "*mean[(][)]|std[(][)]*",tolower(features$name))
Master_select_measure <- Master_data[,select_measure]


#3. Uses descriptive activity names to name the activities in the data set

Act_id<- rbind(y_train,y_test)
Master_data1<- cbind(Master_data,Act_id)

Master_data2<- merge(x=Master_data1, y=activity_labels, by.x ="id", by.y = "id" )
Master_data2$activity.name


#4. Appropriately labels the data set with descriptive variable names.
names(Master_data2)[1:561]<-features$name


#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

subject_id<- rbind(subject_train,subject_test)
Master_data3<- cbind(Master_data2,subject_id)

library("dplyr")

# Renaming the duplicate variable names
valid_column_names <- make.names(names=names(Master_data3), unique=TRUE, allow_ = TRUE)
names(Master_data3)<- valid_column_names


final<- Master_data3 %>%  group_by(activity.name,subjectid) %>% summarise_each(funs(mean))
Tidy_Data_set<- arrange(Tidy_set,activity.name,subjectid)


write.table(Tidy_Data_set, file="G:/Data Science Project/Getting and Cleaning Data/Project Assignment/Tidy_Data_set.txt",
            col.names = TRUE, row.names = FALSE)
            
