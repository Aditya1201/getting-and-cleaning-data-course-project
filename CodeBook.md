==================================================================
Below is the description of Data, transformations done to clean the data and new variables created 
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
Transformations performed:

	1. Renaming the duplicate variable names: Summarised Mean operation failed as there are duplicate column names so make.names function is used to obtain Unique values
==================================================================
New variables created 
	1. Act_id : created to combine y_train and y_test by rows using rbind function
	2. subject_id : created to combine subject_train and subject_test by rows using rbind function
	