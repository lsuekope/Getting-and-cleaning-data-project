Run Analysis
Version 1.0
======================================================================
LuanaSP
Getting and Cleaning Data Course Project

======================================================================
This code merges the training and test sets provided by the "Human Activity Recognition Using Smartphones Dataset"[1] into one dataset, 
extracts the mean and standard deviations for each measurement, organize the labels of the created dataset, and creates a second 
independent dataset with only the average of each variable for each activity and subject.

Variables [1]:
==========================
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Transformations performed:
==========================
- merging of test and training files
- Creation of new column for the type

Reference:
==========================
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
