# Assignment for week 3 course "Getting and Cleaning Data" 

## Reading, cleaning and using data from Samsung wearable devices

List of files for this assignment :
- README.md  it is this file, explaining the scripts and files to implement the solution
- CodeBook.md explains the columns/measurements in the final dataset and the units
- activity_labels.txt  relates id and description of the activities (WALKING, RUNNING, etc)
- features.txt  relates id and description of the features or measurement done by the device
- subject_test.txt Identify the people (subjects) doing the test trial
- X_test.txt  contains all the measurements taken by the device
- y_test.txt  contains the activities done while the measurement is taken
- subject_train.txt  same data as for test (but this is another experiment)
- X_train.txt   same data as for test (but this is another experiment)
- y_train.txt   same data as for test (but this is another experiment)

Please refer to the CodeBook.md to further learn about the measurements written on these files. 

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Details of the script code run_analysis.R

* 1) Merges the training and the test sets to create one data set. 
* 2) Extracts only the measurements on the mean and standard deviation for each measurement. 
* 3) Uses descriptive activity names to name the activities in the data set (instead of showing only the activity_id)
* 4) Appropriately labels the data set with descriptive variable names. 
* 5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

In step 1, we read each of the files, and we convine them in order to create 2 datasets, one for the test data and another for the train data. Here, we do nothing special, just reading files, naming columns and concatenating data using cbind
In step 2, we will convine this data in order to calculate the final mean values (for our treatment, it is irrelevant to distinguish if the data comes from subjects doing a test or a training)
In step 3, we will add the description of each activity, so that we can see directly what it was doing (as for us, the codes in activity_id are not comprensible). This is done using a simple merge (=join in the DB language) between the data from step 2 and the data read from activity_labels.txt
In step 4, we rename the columns to give a descriptive name showing what has been measured. The description are the ones read from the file features.txt This will make easier to understand the meaning of the data (using the CodeBook.md file)
In step 5, we will calculate the mean value for each measurement, grouping by subject and activity. This is done using the function in the package dplyr : group by and summarize_each (to apply the mean function to each column)
At the end we will write this calculation into the file tidy_data_step5.txt and we return the data set.

