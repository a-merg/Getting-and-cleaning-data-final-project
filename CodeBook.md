# Code Book

The contents of the file "tidy.data.txt" are outlined herein.

# Data Source

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

# Identifiers

Subject: ID of the subject

Activity: Type of activity during period of observation

# Activity Labels

WALKING (1): subject was walking

WALKING_UPSTAIRS (2): subject was walking upstairs

WALKING_DOWNSTAIRS (3): subject was walking downstairs

SITTING (4): subject was sitting

STANDING (5): subject was standing

LAYING (6): subject was laying


# Measurements

"Time-BodyAccelerometer-MEAN-X"                
"Time-BodyAccelerometer-MEAN-Y"               
"Time-BodyAccelerometer-MEAN-Z"               
"Time-BodyAccelerometer-STD-X"                
"Time-BodyAccelerometer-STD-Y"                 
"Time-BodyAccelerometer-STD-Z"                
"Time-GravityAccelerometer-MEAN-X"            
"Time-GravityAccelerometer-MEAN-Y"            
"Time-GravityAccelerometer-MEAN-Z"             
"Time-GravityAccelerometer-STD-X"             
"Time-GravityAccelerometer-STD-Y"              
"Time-GravityAccelerometer-STD-Z"             
"Time-BodyAccelerometerJerk-MEAN-X"            
"Time-BodyAccelerometerJerk-MEAN-Y"           
"Time-BodyAccelerometerJerk-MEAN-Z"            
"Time-BodyAccelerometerJerk-STD-X"            
"Time-BodyAccelerometerJerk-STD-Y"            
"Time-BodyAccelerometerJerk-STD-Z"            
"Time-BodyGyroscope-MEAN-X"                    
"Time-BodyGyroscope-MEAN-Y"                   
"Time-BodyGyroscope-MEAN-Z"                   
"Time-BodyGyroscope-STD-X"                    
"Time-BodyGyroscope-STD-Y"                    
"Time-BodyGyroscope-STD-Z"                    
"Time-BodyGyroscopeJerk-MEAN-X"               
"Time-BodyGyroscopeJerk-MEAN-Y"               
"Time-BodyGyroscopeJerk-MEAN-Z"               
"Time-BodyGyroscopeJerk-STD-X"                
"Time-BodyGyroscopeJerk-STD-Y"                
"Time-BodyGyroscopeJerk-STD-Z"                
"Time-BodyAccelerometerMagnitude-MEAN"        
"Time-BodyAccelerometerMagnitude-STD"         
"Time-GravityAccelerometerMagnitude-MEAN"     
"Time-GravityAccelerometerMagnitude-STD"      
"Time-BodyAccelerometerJerkMagnitude-MEAN"    
"Time-BodyAccelerometerJerkMagnitude-STD"     
"Time-BodyGyroscopeMagnitude-MEAN"            
"Time-BodyGyroscopeMagnitude-STD"             
"Time-BodyGyroscopeJerkMagnitude-MEAN"        
"Time-BodyGyroscopeJerkMagnitude-STD"         
"Freq-BodyAccelerometer-MEAN-X"               
"Freq-BodyAccelerometer-MEAN-Y"               
"Freq-BodyAccelerometer-MEAN-Z"               
"Freq-BodyAccelerometer-STD-X"                
"Freq-BodyAccelerometer-STD-Y"                
"Freq-BodyAccelerometer-STD-Z"                
"Freq-BodyAccelerometer-MEANFreq-X"           
"Freq-BodyAccelerometer-MEANFreq-Y"           
"Freq-BodyAccelerometer-MEANFreq-Z"           
"Freq-BodyAccelerometerJerk-MEAN-X"           
"Freq-BodyAccelerometerJerk-MEAN-Y"          
"Freq-BodyAccelerometerJerk-MEAN-Z"           
"Freq-BodyAccelerometerJerk-STD-X"            
"Freq-BodyAccelerometerJerk-STD-Y"            
"Freq-BodyAccelerometerJerk-STD-Z"            
"Freq-BodyAccelerometerJerk-MEANFreq-X"       
"Freq-BodyAccelerometerJerk-MEANFreq-Y"      
"Freq-BodyAccelerometerJerk-MEANFreq-Z"       
"Freq-BodyGyroscope-MEAN-X"                   
"Freq-BodyGyroscope-MEAN-Y"                   
"Freq-BodyGyroscope-MEAN-Z"                   
"Freq-BodyGyroscope-STD-X"                    
"Freq-BodyGyroscope-STD-Y"                     
"Freq-BodyGyroscope-STD-Z"                    
"Freq-BodyGyroscope-MEANFreq-X"                
"Freq-BodyGyroscope-MEANFreq-Y"               
"Freq-BodyGyroscope-MEANFreq-Z"               
"Freq-BodyAccelerometerMagnitude-MEAN"        
"Freq-BodyAccelerometerMagnitude-STD"          
"Freq-BodyAccelerometerMagnitude-MEANFreq"    
"Freq-BodyAccelerometerJerkMagnitude-MEAN"    
"Freq-BodyAccelerometerJerkMagnitude-STD"     
"Freq-BodyAccelerometerJerkMagnitude-MEANFreq" 
"Freq-BodyGyroscopeMagnitude-MEAN"            
"Freq-BodyGyroscopeMagnitude-STD"              
"Freq-BodyGyroscopeMagnitude-MEANFreq"        
"Freq-BodyGyroscopeJerkMagnitude-MEAN"        
"Freq-BodyGyroscopeJerkMagnitude-STD"         
"Freq-BodyGyroscopeJerkMagnitude-MEANFreq"

# Data Transformation

Transformation via "run_analysis.R" was achieved by the following steps:

1. The training and test sets were merged to create one data set.

2. The measurements on the mean and standard deviation were extracted for each measurement, and the others were discarded.

3. The activity identifiers (originally coded as integers between 1 and 6) were replaced with descriptive activity names (see Identifiers section).

4. The variable names were replaced with descriptive variable names, using the following set of rules:

    Special characters "()" were removed
    
    The initial f and t were expanded to FREQ- and TIME-, respectively.
    
    Acc, Gyro, Mag, BodyBody, mean, and std were replaced with Accelerometer, Gyroscope, Magnitude, Body, MEAN, and STD, respectively.
    
5. From the data set in step 4, the final data set was created with the average of each variable for each activity and each subject.
