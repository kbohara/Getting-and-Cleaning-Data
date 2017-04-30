# Getting-and-Cleaning-Data Codebook

This is the Codebook for the Getting and Cleaning Data Course Project

## Raw Data

The raw data was obtained from: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Explanation of raw data
The dataset includes the following files:
=========================================

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


For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


General Steps of the getting to the tidy data: 
1. Read the files
2. Merge the datasets
3. Update the columns
4. Merge the datasets again to create tidy data
5. Get the mean 

## Description of the variables in the tidy file
#|	Column Names	|	Definition
--|---------------|-----------
1	|	PersonID	|	The subject who performed the activity for each window sample
2	|	Activities	|	1 WALKING; 2 WALKING_UPSTAIRS; 3 WALKING_DOWNSTAIRS; 4 SITTING; 5 STANDING; 6 LAYING
3	|	tBodyAcc-mean()-X	|	time domain signal for Body Acceleration - mean for the X axis
4	|	tBodyAcc-mean()-Y	|	time domain signal for Body Acceleration - mean for the Y axis
5	|	tBodyAcc-mean()-Z	|	time domain signal for Body Acceleration - mean for the Z axis
6	|	tBodyAcc-std()-X	|	time domain signal for Body Acceleration - std for the X axis
7	|	tBodyAcc-std()-Y	|	time domain signal for Body Acceleration - std for the Y axis
8	|	tBodyAcc-std()-Z	|	time domain signal for Body Acceleration - std for the Z axis
9	|	tGravityAcc-mean()-X	|	time domain signal for Gravity Acceleartion - mean for the X axis
10	|	tGravityAcc-mean()-Y	|	time domain signal for Gravity Acceleartion - mean for the Y axis
11	|	tGravityAcc-mean()-Z	|	time domain signal for Gravity Acceleartion - mean for the Z axis
12	|	tGravityAcc-std()-X	|	time domain signal for Gravity Acceleartion - std for the X axis
13	|	tGravityAcc-std()-Y	|	time domain signal for Gravity Acceleartion - std for the Y axis
14	|	tGravityAcc-std()-Z	|	time domain signal for Gravity Acceleartion - std for the Z axis
15	|	tBodyAccJerk-mean()-X	|	time doman signal for Body Acceleartion Jerk - mean for the X axis
16	|	tBodyAccJerk-mean()-Y	|	time doman signal for Body Acceleartion Jerk - mean for the Y axis
17	|	tBodyAccJerk-mean()-Z	|	time doman signal for Body Acceleartion Jerk - mean for the Z axis
18	|	tBodyAccJerk-std()-X	|	time doman signal for Body Acceleartion Jerk - std for the X axis
19	|	tBodyAccJerk-std()-Y	|	time doman signal for Body Acceleartion Jerk - std for the Y axis
20	|	tBodyAccJerk-std()-Z	|	time doman signal for Body Acceleartion Jerk - std for the Z axis
21	|	tBodyGyro-mean()-X	|	time domain signal for Body Gyro - mean for the X axis
22	|	tBodyGyro-mean()-Y	|	time domain signal for Body Gyro - mean for the Y axis
23	|	tBodyGyro-mean()-Z	|	time domain signal for Body Gyro - mean for the Z axis
24	|	tBodyGyro-std()-X	|	time domain signal for Body Gyro - std for the X axis
25	|	tBodyGyro-std()-Y	|	time domain signal for Body Gyro - std for the Y axis
26	|	tBodyGyro-std()-Z	|	time domain signal for Body Gyro - std for the Z axis
27	|	tBodyGyroJerk-mean()-X	|	time domain signal for Body Gyro Jerk - mean for the X axis
28	|	tBodyGyroJerk-mean()-Y	|	time domain signal for Body Gyro Jerk - mean for the Y axis
29	|	tBodyGyroJerk-mean()-Z	|	time domain signal for Body Gyro Jerk - mean for the Z axis
30	|	tBodyGyroJerk-std()-X	|	time domain signal for Body Gyro Jerk - std for the X axis
31	|	tBodyGyroJerk-std()-Y	|	time domain signal for Body Gyro Jerk - std for the Y axis
32	|	tBodyGyroJerk-std()-Z	|	time domain signal for Body Gyro Jerk - std for the Z axis
33	|	tBodyAccMag-mean()	|	time domain signal for Body Acceleration Magnitude - mean
34	|	tBodyAccMag-std()	|	time domain signal for Body Acceleration Magnitude - std
35	|	tGravityAccMag-mean()	|	time domain signal for Gravity Acceleration Magnitude - mean
36	|	tGravityAccMag-std()	|	time domain signal for Gravity Acceleration Magnitude - std
37	|	tBodyAccJerkMag-mean()	|	time domain signal for Body Acceleration Jerk Magnitude - mean
38	|	tBodyAccJerkMag-std()	|	time domain signal for Body Acceleration Jerk Magnitude - std
39	|	tBodyGyroMag-mean()	|	time domain signal for Body Gyro Magnitude - mean
40	|	tBodyGyroMag-std()	|	time domain signal for Body Gyro Magnitude - std
41	|	tBodyGyroJerkMag-mean()	|	time domain signal for Body Gyro Jerk Magnitude - mean
42	|	tBodyGyroJerkMag-std()	|	time domain signal for Body Gyro Jerk Magnitude - std
43	|	fBodyAcc-mean()-X	|	frequency domain signal for Body Acceleration - mean for the X axis
44	|	fBodyAcc-mean()-Y	|	frequency domain signal for Body Acceleration - mean for the Y axis
45	|	fBodyAcc-mean()-Z	|	frequency domain signal for Body Acceleration - mean for the Z axis
46	|	fBodyAcc-std()-X	|	frequency domain signal for Body Acceleration - std for the X axis
47	|	fBodyAcc-std()-Y	|	frequency domain signal for Body Acceleration - std for the Y axis
48	|	fBodyAcc-std()-Z	|	frequency domain signal for Body Acceleration - std for the Z axis
49	|	fBodyAcc-meanFreq()-X	|	frequency domain signal for Gravity Acceleartion - mean for the X axis
50	|	fBodyAcc-meanFreq()-Y	|	frequency domain signal for Gravity Acceleartion - mean for the Y axis
51	|	fBodyAcc-meanFreq()-Z	|	frequency domain signal for Gravity Acceleartion - mean for the Z axis
52	|	fBodyAccJerk-mean()-X	|	frequency domain signal for Gravity Acceleartion - std for the X axis
53	|	fBodyAccJerk-mean()-Y	|	frequency domain signal for Gravity Acceleartion - std for the Y axis
54	|	fBodyAccJerk-mean()-Z	|	frequency domain signal for Gravity Acceleartion - std for the Z axis
55	|	fBodyAccJerk-std()-X	|	frequency doman signal for Body Acceleartion Jerk - mean for the X axis
56	|	fBodyAccJerk-std()-Y	|	frequency doman signal for Body Acceleartion Jerk - mean for the Y axis
57	|	fBodyAccJerk-std()-Z	|	frequency doman signal for Body Acceleartion Jerk - mean for the Z axis
58	|	fBodyAccJerk-meanFreq()-X	|	frequency doman signal for Body Acceleartion Jerk - std for the X axis
59	|	fBodyAccJerk-meanFreq()-Y	|	frequency doman signal for Body Acceleartion Jerk - std for the Y axis
60	|	fBodyAccJerk-meanFreq()-Z	|	frequency doman signal for Body Acceleartion Jerk - std for the Z axis
61	|	fBodyGyro-mean()-X	|	frequency domain signal for Body Gyro - mean for the X axis
62	|	fBodyGyro-mean()-Y	|	frequency domain signal for Body Gyro - mean for the Y axis
63	|	fBodyGyro-mean()-Z	|	frequency domain signal for Body Gyro - mean for the Z axis
64	|	fBodyGyro-std()-X	|	frequency domain signal for Body Gyro - std for the X axis
65	|	fBodyGyro-std()-Y	|	frequency domain signal for Body Gyro - std for the Y axis
66	|	fBodyGyro-std()-Z	|	frequency domain signal for Body Gyro - std for the Z axis
67	|	fBodyGyro-meanFreq()-X	|	frequency domain signal for Body Gyro Jerk - mean for the X axis
68	|	fBodyGyro-meanFreq()-Y	|	frequency domain signal for Body Gyro Jerk - mean for the Y axis
69	|	fBodyGyro-meanFreq()-Z	|	frequency domain signal for Body Gyro Jerk - mean for the Z axis
70	|	fBodyAccMag-mean()	|	frequency domain signal for Body Acceleration Magnitude - mean
71	|	fBodyAccMag-std()	|	frequency domain signal for Body Acceleration Magnitude - std
72	|	fBodyAccMag-meanFreq()	|	frequency domain signal for Body Acceleration Magnitude - mean frequency
73	|	fBodyBodyAccJerkMag-mean()	|	frequency domain signal for Body Body Acceleration Jerk Magnitude - mean
74	|	fBodyBodyAccJerkMag-std()	|	frequency domain signal for Body Body Acceleration Jerk Magnitude - std
75	|	fBodyBodyAccJerkMag-meanFreq()	|	frequency domain signal for Body Body Acceleration Jerk Magnitude - mean frequency
76	|	fBodyBodyGyroMag-mean()	|	frequency domain signal for Body Body Gyro Magnitude - mean
77	|	fBodyBodyGyroMag-std()	|	frequency domain signal for Body Body Gyro Magnitude - std
78	|	fBodyBodyGyroMag-meanFreq()	|	frequency domain signal for Body Body Gyro Magnitude - mean frequency
79	|	fBodyBodyGyroJerkMag-mean()	|	frequency domain signal for Body Body Gyro Jerk Magnitude - mean
80	|	fBodyBodyGyroJerkMag-std()	|	frequency domain signal for Body Body Gyro Jerk Magnitude - std
81	|	fBodyBodyGyroJerkMag-meanFreq()	|	frequency domain signal for Body Body Gyro Jerk Magnitude - mean frequency
82	|	angle(tBodyAccMean,gravity)	|	vectors obtained by averaging the signals in a signal window sample
83	|	angle(tBodyAccJerkMean),gravityMean)	|	vectors obtained by averaging the signals in a signal window sample
84	|	angle(tBodyGyroMean,gravityMean)	|	vectors obtained by averaging the signals in a signal window sample
85	|	angle(tBodyGyroJerkMean,gravityMean)	|	vectors obtained by averaging the signals in a signal window sample
86	|	angle(X,gravityMean)	|	vectors obtained by averaging the signals in a signal window sample
87	|	angle(Y,gravityMean)	|	vectors obtained by averaging the signals in a signal window sample
88	|	angle(Z,gravityMean)	|	vectors obtained by averaging the signals in a signal window sample




