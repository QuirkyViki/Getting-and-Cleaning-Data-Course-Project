a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md

## Identifiers
- subject: The ID of the test subject
- code: The type code of activity 

## Measurements
- TimeimeBodyAccelerometerelerometer.mean...X 
- TimeimeBodyAccelerometerelerometer.mean...Y 
- TimeimeBodyAccelerometerelerometer.mean...Z 
- TimeimeBodyAccelerometerelerometer.std...X 
- TimeimeBodyAccelerometerelerometer.std...Y 
- TimeimeBodyAccelerometerelerometer.std...Z 
- TimeimeGravityAccelerometerelerometer.mean...X 
- TimeimeGravityAccelerometerelerometer.mean...Y 
- TimeimeGravityAccelerometerelerometer.mean...Z 
- TimeimeGravityAccelerometerelerometer.std...X 
- TimeimeGravityAccelerometerelerometer.std...Y 
- TimeimeGravityAccelerometerelerometer.std...Z 
- TimeimeBodyAccelerometerelerometerJerk.mean...X 
- TimeimeBodyAccelerometerelerometerJerk.mean...Y 
- TimeimeBodyAccelerometerelerometerJerk.mean...Z 
- TimeimeBodyAccelerometerelerometerJerk.std...X 
- TimeimeBodyAccelerometerelerometerJerk.std...Y 
- TimeimeBodyAccelerometerelerometerJerk.std...Z 
- TimeimeBodyGyroscopescope.mean...X 
- TimeimeBodyGyroscopescope.mean...Y 
- TimeimeBodyGyroscopescope.mean...Z 
- TimeimeBodyGyroscopescope.std...X 
- TimeimeBodyGyroscopescope.std...Y 
- TimeimeBodyGyroscopescope.std...Z 
- TimeimeBodyGyroscopescopeJerk.mean...X 
- TimeimeBodyGyroscopescopeJerk.mean...Y 
- TimeimeBodyGyroscopescopeJerk.mean...Z 
- TimeimeBodyGyroscopescopeJerk.std...X 
- TimeimeBodyGyroscopescopeJerk.std...Y 
- TimeimeBodyGyroscopescopeJerk.std...Z 
- TimeimeBodyAccelerometerelerometerMagnitudenitude.mean.. 
- TimeimeBodyAccelerometerelerometerMagnitudenitude.std..
- TimeimeGravityAccelerometerelerometerMagnitudenitude.mean..
- TimeimeGravityAccelerometerelerometerMagnitudenitude.std..
- TimeimeBodyAccelerometerelerometerJerkMagnitudenitude.mean..
- TimeimeBodyAccelerometerelerometerJerkMagnitudenitude.std.. 
- TimeimeBodyGyroscopescopeMagnitudenitude.mean.. 
- TimeimeBodyGyroscopescopeMagnitudenitude.std.. 
- TimeimeBodyGyroscopescopeJerkMagnitudenitude.mean.. 
- TimeimeBodyGyroscopescopeJerkMagnitudenitude.std.. 
- FrequencyrequencyBodyAccelerometerelerometer.mean...X 
- FrequencyrequencyBodyAccelerometerelerometer.mean...Y 
- FrequencyrequencyBodyAccelerometerelerometer.mean...Z 
- FrequencyrequencyBodyAccelerometerelerometer.std...X 
- FrequencyrequencyBodyAccelerometerelerometer.std...Y 
- FrequencyrequencyBodyAccelerometerelerometer.std...Z 
- FrequencyrequencyBodyAccelerometerelerometer.meanFreq...X
- FrequencyrequencyBodyAccelerometerelerometer.meanFreq...Y 
- FrequencyrequencyBodyAccelerometerelerometer.meanFreq...Z 
- FrequencyrequencyBodyAccelerometerelerometerJerk.mean...X 
- FrequencyrequencyBodyAccelerometerelerometerJerk.mean...Y 
- FrequencyrequencyBodyAccelerometerelerometerJerk.mean...Z 
- FrequencyrequencyBodyAccelerometerelerometerJerk.std...X 
- FrequencyrequencyBodyAccelerometerelerometerJerk.std...Y 
- FrequencyrequencyBodyAccelerometerelerometerJerk.std...Z 
- FrequencyrequencyBodyAccelerometerelerometerJerk.meanFreq...X 
- FrequencyrequencyBodyAccelerometerelerometerJerk.meanFreq...Y 
- FrequencyrequencyBodyAccelerometerelerometerJerk.meanFreq...Z 
- FrequencyrequencyBodyGyroscopescope.mean...X 
- FrequencyrequencyBodyGyroscopescope.mean...Y 
- FrequencyrequencyBodyGyroscopescope.mean...Z 
- FrequencyrequencyBodyGyroscopescope.std...X 
- FrequencyrequencyBodyGyroscopescope.std...Y 
- FrequencyrequencyBodyGyroscopescope.std...Z 
- FrequencyrequencyBodyGyroscopescope.meanFreq...X 
- FrequencyrequencyBodyGyroscopescope.meanFreq...Y 
- FrequencyrequencyBodyGyroscopescope.meanFreq...Z 
- FrequencyrequencyBodyAccelerometerelerometerMagnitudenitude.mean.. 
- FrequencyrequencyBodyAccelerometerelerometerMagnitudenitude.std.. 
- FrequencyrequencyBodyAccelerometerelerometerMagnitudenitude.meanFreq.. 
- FrequencyrequencyBodyAccelerometerelerometerJerkMagnitudenitude.mean.. 
- FrequencyrequencyBodyAccelerometerelerometerJerkMagnitudenitude.std.. 
- FrequencyrequencyBodyAccelerometerelerometerJerkMagnitudenitude.meanFreq.. 
- FrequencyrequencyBodyGyroscopescopeMagnitudenitude.mean.. 
- FrequencyrequencyBodyGyroscopescopeMagnitudenitude.std.. 
- FrequencyrequencyBodyGyroscopescopeMagnitudenitude.meanFreq.. 
- FrequencyrequencyBodyGyroscopescopeJerkMagnitudenitude.mean.. 
- FrequencyrequencyBodyGyroscopescopeJerkMagnitudenitude.std..
- FrequencyrequencyBodyGyroscopescopeJerkMagnitudenitude.meanFreq..


## Transformations
I mainly did the following 5 steps to create the tidy data set
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
