library(dplyr)

#Creates a test dataset
  #reads each file, renames the columns and bind the dataset

testDatay<- read.table("UCI HAR Dataset/test/y_test.txt")
colnames(testDatay)<- "y"
testDataX<- read.table("UCI HAR Dataset/test/X_test.txt")

testDatasubject<- read.table("UCI HAR Dataset/test/subject_test.txt")
colnames(testDatasubject)<- "subject"
testData<- cbind(testDatasubject, testDatay, testDataX)

#Creates a train dataset
  #reads each file, renames the columns and bind the dataset

trainDatay<- read.table("UCI HAR Dataset/train/y_train.txt")
colnames(trainDatay)<- "y"
trainDataX<- read.table("UCI HAR Dataset/train/X_train.txt")

trainDatasubject<- read.table("UCI HAR Dataset/train/subject_train.txt")
colnames(trainDatasubject)<- "subject"
trainData<- cbind(trainDatasubject, trainDatay, trainDataX)
 
#Creates an extra column with the "type" to shown the data origin, merge the train and test datasets,
  #and removes the unnecessary datasets
type = "test"
testData<- cbind(type, testData)
type = "train"
trainData<- cbind(type, trainData)
Data<- rbind(trainData, testData)
rm("testData", "testDatay", "testDataX", "testDatasubject", "trainData", "trainDatay", "trainDataX", "trainDatasubject")
Datafinal<- tbl_df(Data)


Datafinal %>%
  rename(activity = y)%>%
  arrange(type, subject, activity) %>%
  group_by(type, subject, activity) %>%
  summarize(mean(V1:V561))
  