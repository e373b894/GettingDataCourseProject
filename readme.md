# readme.md for course

1. Merges the training and the test sets to create one data set.
put x_train, y_train, subject_train together
Use read.table to read in each file to a data frame.  Use cbind() to combine the columns from each file to a single test data frame.

put x_test, y_test, subject_test together
Use read.table to read in each file to a data frame.  Use cbind() to combine the columns from each file to a single test data frame.

2. Extracts only the measurements on the mean and standard deviation for each measurement. 

Intermediate data sets that extract the numeric mean and stddev for each measurement variable.  Use grep function to find "mean" and "std" column name patterns.  Use cbind function to combine the
"subject", "activity", and quantitative data together.

3. Uses descriptive activity names to name the activities in the data set

For example,
 1 WALKING
 2 WALKING_UPSTAIRS
 3 WALKING_DOWNSTAIRS
 4 SITTING
 5 STANDING
 6 LAYING

Rename column names for 1 and 2 to descriptive names.  Use R match function to assign descriptive names to 
generic column names. Use activity_labels for what number in Y goes with each activity.


Use match function in R to lookup the variable name that matches the variable position.

4. Appropriately labels the data set with descriptive variable names

For example, tBodyAcc-XYZ tGravityAcc-XYZ tBodyAccJerk-XYZ tBodyGyro-XYZ tBodyGyroJerk-XYZ
Use features.txt for x column labels.  For tidy set, rename various abbreviated columns for example:

legend:
acc - Acceleration
gyro - gyroscope
t - Time
f - Freq

Note: R functions used except for ^t, ^ f, and removal of '...' (Use of editor find/replace for "t%", "f%", '...')

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Order the set by columns [1:2]
Determine the mean of each of the quantitative variables [3:81], grouping by the qualitative variables [1:2]



