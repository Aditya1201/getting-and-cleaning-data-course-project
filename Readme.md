==================================================================
Below is the description of how the code in "run_analysis.R" file works:
==================================================================

All the below 8 required files are imported into R using Read.Table function
	1.activity_labels
	2.features
	3.y_test
	4.subject_test
	5.x_test
	6.y_train
	7.subject_train
	8.x_train
	
The structure of a dataframe is observed using Str function so as to ensure the data is imported as expected.
Post which the dataframes are validated for any missing values.
==================================================================

Step 1:
The x_train and x_test dataframes are combined by rows using rbind function

==================================================================

Step 2:
The Grepl function is used to identify the column names(measurements) which contains either "mean()" or "std()" 
and the o/p logical vector from above is used to extract only the required measurements

==================================================================

Step 3:
The y_train and y_test dataframes are combined by rows using rbind function
Output of which is combined by column using cbind to the step 1 dataframe
Post which its merged with "activity_labels" dataframe to obtain the Activity names

==================================================================

Step 4:

The features table is used to assign the names to the dataframe from step 3

==================================================================

Step 5:

The subject_train and subject_test dataframes are combined by rows using rbind function
Output of which is combined by column to the step 4 dataframe
As the Dataframe contains duplicate column names - make.names function is used to generate unique column names 
Using a pipeline opeator, Group_by function is applied to group the dataframe by activity.name and subjectid. 
summarise_each function is used to generate means of all measurements 

The output dataframe is sorted by activity.name,subjectid and extracted using write.table to a text file named "Tidy_Data_set.txt" 

==================================================================