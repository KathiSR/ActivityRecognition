
Description of "MergedTrainingTest_averages" dataset: 
=================

MergedTrainingTest_averages is the result of combining the test and training data from the original dataset

Changes from original dataset:

(1) the variable subjID was added to denote the individual subjects in the dataset

(2) the variable activity.labels was added to denote the label applied to each set of measured variables

(3) The original descriptions (see below) of the variable names still apply. However, the dataset was reduced to contain only the means and standard deviations of each measured variable

(4) Each entry reflects the average for each activity level calculated separately for each subject


Full list of variables: 

subjIDactivity.labelstBodyAcc.mean_XtBodyAcc.mean_YtBodyAcc.mean_ZtBodyAcc.std_XtBodyAcc.std_YtBodyAcc.std_ZtGravityAcc.mean_XtGravityAcc.mean_YtGravityAcc.mean_ZtGravityAcc.std_XtGravityAcc.std_YtGravityAcc.std_ZtBodyAccJerk.mean_XtBodyAccJerk.mean_YtBodyAccJerk.mean_ZtBodyAccJerk.std_XtBodyAccJerk.std_YtBodyAccJerk.std_ZtBodyGyro.mean_XtBodyGyro.mean_YtBodyGyro.mean_ZtBodyGyro.std_XtBodyGyro.std_YtBodyGyro.std_ZtBodyGyroJerk.mean_XtBodyGyroJerk.mean_YtBodyGyroJerk.mean_ZtBodyGyroJerk.std_XtBodyGyroJerk.std_YtBodyGyroJerk.std_ZtBodyAccMag.mean tBodyAccMag.std tGravityAccMag.mean tGravityAccMag.std tBodyAccJerkMag.mean tBodyAccJerkMag.std tBodyGyroMag.mean tBodyGyroMag.std tBodyGyroJerkMag.mean tBodyGyroJerkMag.std fBodyAcc.mean_XfBodyAcc.mean_YfBodyAcc.mean_ZfBodyAcc.std_XfBodyAcc.std_YfBodyAcc.std_ZfBodyAccJerk.mean_XfBodyAccJerk.mean_YfBodyAccJerk.mean_ZfBodyAccJerk.std_XfBodyAccJerk.std_YfBodyAccJerk.std_ZfBodyGyro.mean_XfBodyGyro.mean_YfBodyGyro.mean_ZfBodyGyro.std_XfBodyGyro.std_YfBodyGyro.std_ZfBodyAccMag.mean fBodyAccMag.std fBodyAccJerkMag.mean fBodyAccJerkMag.std fBodyGyroMag.mean fBodyGyroMag.std fBodyGyroJerkMag.mean fBodyGyroJerkMag.std 




Description of original dataset: 
=================

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

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean









