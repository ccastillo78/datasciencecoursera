# Code Book for Project week 3 course "Getting and Cleaning Data"

## INTRODUCTION
The following data dictionary describes the eyeglance reduction variables for the assigment of week 3 of course Getting and Cleaning data.
The purpose is to read a relatively big data set (data collected from the accelerometers from the Samsung Galaxy S smartphone), 
cleaning, tidying and doing some basic calculations. 
In addition to this introduction, the data dictionary includes the following four sections.

Revision History –This data dictionary should be considered a working document that will evolve over time. 
The revision history shown on the previous page provides a table which describes updates to the document.

Related Reading – A list of related subject areas and specific documents of value to users of the data set 
described in this data dictionary.

Dataset Description – This section describes what data is available and how the data are stored.

List of Variables – A list of the entries (variables) in the dictionary which can be used as a table of 
contents to locate specific variables in the document.

## RELATED READING 

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Read.me fom this data source :
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

## DATASET DESCRIPTION
- Its activity label. (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist.
- An identifier of the subject who carried out the experiment.
- A 561-feature vector with time and frequency domain variables. 

For this project these data sets will not be used :
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.

We have the following files :

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

### Notes: 
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

### License:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors 
or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.



## LIST OF VARIABLES

Using all these data we will calculate the mean value, grouped by subject and activity, for each of these sets of meaurements :

"tBodyAcc-mean()-X"              
"tBodyAcc-mean()-Y"
"tBodyAcc-mean()-Z"              
"tBodyAcc-std()-X"                
"tBodyAcc-std()-Y"               
"tBodyAcc-std()-Z"                
"tGravityAcc-mean()-X"           
"tGravityAcc-mean()-Y"            
"tGravityAcc-mean()-Z"           
"tGravityAcc-std()-X"             
"tGravityAcc-std()-Y"            
"tGravityAcc-std()-Z"             
"tBodyAccJerk-mean()-X"          
"tBodyAccJerk-mean()-Y"           
"tBodyAccJerk-mean()-Z"          
"tBodyAccJerk-std()-X"            
"tBodyAccJerk-std()-Y"           
"tBodyAccJerk-std()-Z"            
"tBodyGyro-mean()-X"             
"tBodyGyro-mean()-Y"              
"tBodyGyro-mean()-Z"             
"tBodyGyro-std()-X"               
"tBodyGyro-std()-Y"              
"tBodyGyro-std()-Z"               
"tBodyGyroJerk-mean()-X"         
"tBodyGyroJerk-mean()-Y"          
"tBodyGyroJerk-mean()-Z"         
"tBodyGyroJerk-std()-X"           
"tBodyGyroJerk-std()-Y"          
"tBodyGyroJerk-std()-Z"           
"tBodyAccMag-mean()"             
"tBodyAccMag-std()"               
"tGravityAccMag-mean()"          
"tGravityAccMag-std()"            
"tBodyAccJerkMag-mean()"         
"tBodyAccJerkMag-std()"           
"tBodyGyroMag-mean()"            
"tBodyGyroMag-std()"              
"tBodyGyroJerkMag-mean()"        
"tBodyGyroJerkMag-std()"          
"fBodyAcc-mean()-X"              
"fBodyAcc-mean()-Y"               
"fBodyAcc-mean()-Z"              
"fBodyAcc-std()-X"                
"fBodyAcc-std()-Y"               
"fBodyAcc-std()-Z"                
"fBodyAcc-meanFreq()-X"          
"fBodyAcc-meanFreq()-Y"           
"fBodyAcc-meanFreq()-Z"          
"fBodyAccJerk-mean()-X"           
"fBodyAccJerk-mean()-Y"          
"fBodyAccJerk-mean()-Z"           
"fBodyAccJerk-std()-X"           
"fBodyAccJerk-std()-Y"            
"fBodyAccJerk-std()-Z"           
"fBodyAccJerk-meanFreq()-X"       
"fBodyAccJerk-meanFreq()-Y"      
"fBodyAccJerk-meanFreq()-Z"       
"fBodyGyro-mean()-X"             
"fBodyGyro-mean()-Y"              
"fBodyGyro-mean()-Z"             
"fBodyGyro-std()-X"               
"fBodyGyro-std()-Y"              
"fBodyGyro-std()-Z"               
"fBodyGyro-meanFreq()-X"         
"fBodyGyro-meanFreq()-Y"          
"fBodyGyro-meanFreq()-Z"         
"fBodyAccMag-mean()"              
"fBodyAccMag-std()"              
"fBodyAccMag-meanFreq()"          
"fBodyBodyAccJerkMag-mean()"     
"fBodyBodyAccJerkMag-std()"       
"fBodyBodyAccJerkMag-meanFreq()" 
"fBodyBodyGyroMag-mean()"         
"fBodyBodyGyroMag-std()"         
"fBodyBodyGyroMag-meanFreq()"     
"fBodyBodyGyroJerkMag-mean()"    
"fBodyBodyGyroJerkMag-std()"      
"fBodyBodyGyroJerkMag-meanFreq()"

### Feature Selection

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation
- mad(): Median absolute deviation -> Not used in this assignment
- max(): Largest value in array -> Not used in this assignment
- min(): Smallest value in array -> Not used in this assignment
- sma(): Signal magnitude area -> Not used in this assignment
- energy(): Energy measure. Sum of the squares divided by the number of values.  -> Not used in this assignment
- iqr(): Interquartile range  -> Not used in this assignment
- entropy(): Signal entropy -> Not used in this assignment
- arCoeff(): Autorregresion coefficients with Burg order equal to 4 -> Not used in this assignment
- correlation(): correlation coefficient between two signals -> Not used in this assignment
- maxInds(): index of the frequency component with largest magnitude -> Not used in this assignment
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency -> Not used in this assignment
- skewness(): skewness of the frequency domain signal  -> Not used in this assignment
- kurtosis(): kurtosis of the frequency domain signal  -> Not used in this assignment
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window. -> Not used in this assignment
- angle(): Angle between to vectors. -> Not used in this assignment

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

To build our final dataset and analyse the data (calculating the mean value of each vector), we will keep only the information from theses two data set vectors :
- mean(): Mean value
- std(): Standard deviation
