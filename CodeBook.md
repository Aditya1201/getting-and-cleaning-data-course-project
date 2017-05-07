##The parts of the assignment are:

README.md -> describing the project and providing necessary information
Code Book.md -> describing all Data files used,variables,New variables, Transformations  of the data output
run_analysis.R -> contains the script that tidies the data
tidymean.txt -> containing the tidied data output of the script
==================================================================
Data files:

The zipped file received has 8 data files which are important for this project

	1. features 				: contains Variable names
	2. Activity_labels  : Name of the Activity (ex: walking, sitting etc.,)
	3. x_train 					: Train Data (70% of Total Data)
	4. y_train 					: Activity Id (1 to 6) for each row of x_train
	5. subject_train 		: subject no (1 to 30) for each row of x_train
	6. x_test  					: Test Data (30% of Total Data)
	7. y_test  					: Activity Id (1 to 6) for each row of x_test
	8. subject_test 		: Subject no (1 to 30) for each row of x_test

One more file which can be used as a reference is "features_info" which contains Definitions of Variable names.

==================================================================
Variables in the Code:

tBodyAcc-mean()-X(int): Time Body Accelerometer Signal mean value in x direction

tBodyAcc-mean()-Y(int): Time Body Accelerometer Signal mean value in y direction

tBodyAcc-mean()-Z(int): Time Body Accelerometer Signal mean value in z direction

tBodyAcc-std()-X(int): Time Body Accelerometer Signal standard deviation in X direction

tBodyAcc-std()-Y(int): Time Body Accelerometer Signal standard deviation in y direction

tBodyAcc-std()-Z(int): Time Body Accelerometer Signal standard deviation in z direction

tGravityAcc-mean()-X(int): Time Gravity Accelerometer Signal mean value in x direction

tGravityAcc-mean()-Y(int): Time Gravity Accelerometer Signal mean value in y direction

tGravityAcc-mean()-Z(int): Time Gravity Accelerometer Signal mean value in z direction

tGravityAcc-std()-X(int): Time Gravity Accelerometer Signal standard deviation value in x direction

tGravityAcc-std()-Y(int): Time Gravity Accelerometer Signal standard deviation value in y direction

tGravityAcc-std()-Z(int): Time Gravity Accelerometer Signal standard deviation value in z direction

tBodyAccJerk-mean()-X(int): Time Body Accelerometer Jerk Signal mean value in x direction

tBodyAccJerk-mean()-Y(int): Time Body Accelerometer Jerk Signal mean value in y direction

tBodyAccJerk-mean()-Z(int): Time Body Accelerometer Jerk Signal mean value in z direction

tBodyAccJerk-std()-X(int): Time Body Accelerometer Jerk Signal standard deviation value in x direction

tBodyAccJerk-std()-Y(int): Time Body Accelerometer Jerk Signal standard deviation value in y direction

tBodyAccJerk-std()-Z(int): Time Body Accelerometer Jerk Signal standard deviation value in z direction

tBodyGyro-mean()-X(int): Time Body Gyroscope Signal mean value in x direction

tBodyGyro-mean()-Y(int): Time Body Gyroscope Signal mean value in y direction

tBodyGyro-mean()-Z(int): Time Body Gyroscope Signal mean value in z direction

tBodyGyro-std()-X(int): Time Body Gyroscope Signal standard deviation value in x direction

tBodyGyro-std()-Y(int): Time Body Gyroscope Signal standard deviation value in y direction

tBodyGyro-std()-Z(int): Time Body Gyroscope Signal standard deviation value in z direction

tBodyGyroJerk-mean()-X(int): Time Body Gyroscope Jerk Signal mean value in x direction

tBodyGyroJerk-mean()-Y(int): Time Body Gyroscope Jerk Signal mean value in y direction

tBodyGyroJerk-mean()-Z(int): Time Body Gyroscope Jerk Signal mean value in z direction

tBodyGyroJerk-std()-X(int):Time Body Gyroscope Jerk Signal standard deviation in x direction

tBodyGyroJerk-std()-Y(int):Time Body Gyroscope Jerk Signal standard deviation in y direction

tBodyGyroJerk-std()-Z(int):Time Body Gyroscope Jerk Signal standard deviation in z direction

tBodyAccMag-mean()(int): Time Body Accelerometer Euclidean Norm mean value

tBodyAccMag-std()(int): Time Body Accelerometer Euclidean Norm standard deviation value

tGravityAccMag-mean()(int): Time Gravity Accelerometer Euclidean Norm mean value

tGravityAccMag-std()(int): Time Gravity Accelerometer Euclidean Norm standard deviation value

tBodyAccJerkMag-mean()(int): Time Body Accelerometer Jerk Euclidean Norm mean value

tBodyAccJerkMag-std()(int): Time Body Accelerometer Jerk Euclidean Norm standard deviation value

tBodyGyroMag-mean()(int): Time Body Gyroscope Euclidean Norm mean value

tBodyGyroMag-std()(int): Time Body Gyroscope Euclidean Norm standard deviation value

tBodyGyroJerkMag-mean()(int): Time Body Gyroscope Jerk Euclidean Norm mean value

tBodyGyroJerkMag-std()(int): Time Body Gyroscope Jerk Euclidean Norm standard deviation value

fBodyAcc-mean()-X(int):Frequency Body Accelerometer Signal mean value in x direction

fBodyAcc-mean()-Y(int):Frequency Body Accelerometer Signal mean value in y direction

fBodyAcc-mean()-Z(int):Frequency Body Accelerometer Signal mean value in z direction

fBodyAcc-std()-X(int):Frequency Body Accelerometer Signal standard deviation value in x direction

fBodyAcc-std()-Y(int):Frequency Body Accelerometer Signal standard deviation value in y direction

fBodyAcc-std()-Z(int):Frequency Body Accelerometer SIgnal standard deviation value in z direction

fBodyAcc-meanFreq()-X(int):Frequency Body Accelerometer Signal mean frequency value in x direction

fBodyAcc-meanFreq()-Y(int):Frequency Body Accelerometer Signal mean frequency value in y direction

fBodyAcc-meanFreq()-Z(int):Frequency Body Accelerometer Signal mean frequency value in z direction

fBodyAccJerk-mean()-X(int): Frequency Body Accelerometer Jerk Signal mean value in x value

fBodyAccJerk-mean()-Y(int): Frequency Body Accelerometer Jerk Signal mean value in y value

fBodyAccJerk-mean()-Z(int): Frequency Body Accelerometer Jerk Signal mean value in z value

fBodyAccJerk-std()-X(int): Frequency Body Accelerometer Jerk Signal standard deviation value in x value

fBodyAccJerk-std()-Y(int): Frequency Body Accelerometer Jerk Signal standard deviation value in y value

fBodyAccJerk-std()-Z(int): Frequency Body Accelerometer Jerk Signal standard deviation value in z value

fBodyAccJerk-meanFreq()-X(int):Frequency Body Accelerometer Jerk Signal mean frequency value in x direction

fBodyAccJerk-meanFreq()-Y(int):Frequency Body Accelerometer Jerk Signal mean frequency value in y direction

fBodyAccJerk-meanFreq()-Z(int):Frequency Body Accelerometer Jerk Signal mean frequency value in z direction

fBodyGyro-mean()-X(int):Frequency Body Gyroscope Signal mean value in x direction

fBodyGyro-mean()-Y(int):Frequency Body Gyroscope Signal mean value in y direction

fBodyGyro-mean()-Z(int):Frequency Body Gyroscope Signal mean value in z direction

fBodyGyro-std()-X(int):Frequency Body Gyroscope Signal standard deviation value in x direction

fBodyGyro-std()-Y(int):Frequency Body Gyroscope Signal standard deviation value in y direction

fBodyGyro-std()-Z(int):Frequency Body Gyroscope Signal standard deviation value in z direction

fBodyGyro-meanFreq()-X(int):Frequency Body Gyroscope mean frequency value in x direction

fBodyGyro-meanFreq()-Y(int):Frequency Body Gyroscope mean frequency value in y direction

fBodyGyro-meanFreq()-Z(int):Frequency Body Gyroscope mean frequency value in z direction

fBodyAccMag-mean()(int):Frequency Body Accelerometer Euclidean Norm mean value

fBodyAccMag-std()(int):Frequency Body Accelerometer Euclidean Norm standard deviation value

fBodyAccMag-meanFreq()(int):Frequency Body Accelerometer mean frequency value

fBodyBodyAccJerkMag-mean()(int):Frequency Body Accelerometer Jerk Euclidean Norm mean value

fBodyBodyAccJerkMag-std()(int):Frequency Body Accelerometer Jerk Euclidean Norm standard deviation value

fBodyBodyAccJerkMag-meanFreq()(int):Frequency Body Accelerometer Jerk Euclidean Norm mean frequency value

fBodyBodyGyroMag-mean()(int):Frequency Body Gyroscope Euclidean Norm mean value

fBodyBodyGyroMag-std()(int):Frequency Body Gyroscope Euclidean Norm mean value

fBodyBodyGyroMag-meanFreq()(int):Frequency Body Gyroscope Euclidean Norm mean frequency value

fBodyBodyGyroJerkMag-mean()(int):Frequency Body Gyroscope Jerk Euclidean Norm mean value

fBodyBodyGyroJerkMag-std()(int):Frequency Body Gyroscope Jerk Euclidean Norm standard deviation value

fBodyBodyGyroJerkMag-meanFreq()(int):Frequency Body Gyroscope Jerk Euclidean Norm mean frequency value
==================================================================
Transformations performed:

	1. Renaming the duplicate variable names: Summarised Mean operation failed as there are duplicate column names so make.names function is used to obtain Unique values
==================================================================
New variables created 
	1. Act_id : created to combine y_train and y_test by rows using rbind function
	2. subject_id : created to combine subject_train and subject_test by rows using rbind function
	