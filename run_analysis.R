## data from :
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
library(dplyr)
library(stringr)

#Samsung data is supposed to be in the working directory 
#  (under folder UCI HAR Dataset)
###
#    id, desc for activities and features (measures)
activities <- read.delim("./UCI HAR Dataset/activity_labels.txt", header=FALSE, sep = " ", col.names = c("id", "desc_activity"))
features <- read.delim("./UCI HAR Dataset/features.txt", header=FALSE, sep = " ", col.names = c("id", "desc_features"))

#test data
subject_test <- read.delim("./UCI HAR Dataset/test/subject_test.txt", header=FALSE, sep = " ", col.names = c("subject_id"))
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)
#- A 561-feature vector with time 
#          and frequency domain variables.  
y_test <- read.delim("./UCI HAR Dataset/test/y_test.txt", header=FALSE, col.names = c("activity_id"))
test <- cbind(subject_test, y_test, X_test)

#train data
subject_train <- read.delim("./UCI HAR Dataset/train/subject_train.txt", header=FALSE, sep = " ", col.names = c("subject_id"))
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)
y_train <- read.delim("./UCI HAR Dataset/train/y_train.txt", header=FALSE, col.names = c("activity_id"))
train <- cbind(subject_train, y_train, X_train)

#merge test and training data to create one dataset
data <- merge(test, train, all=TRUE)

########################
### Step 2
########################
# we crete a this new column for convenience (easier to identify the mesurement columns)
features$column <- paste("V", features$id, sep = '')
#we search and filter the measures where found the text "mean()" or "std()"
featuresFilt <- filter(features, str_detect(desc_features, "mean()") | str_detect(desc_features, "std()") )
data2 <- select(data, subject_id, activity_id, num_range("V", featuresFilt$id))

########################
### Step 3
########################
#we join to get the description of each activity_id
data3 <- merge(data2, activities, by.x="activity_id", by.y="id")
#we reorder the columns 
data3 <- select(data3, activity_id, desc_activity, subject_id, everything())

########################
### Step 4
########################
data4 <- setNames(data3[4:82], featuresFilt$desc_features)
data4 <- cbind(data3[1:3], data4)

########################
### Step 5
########################
data5 <- data4 %>% group_by(activity_id, desc_activity, subject_id) %>% summarize_each(funs(mean))
