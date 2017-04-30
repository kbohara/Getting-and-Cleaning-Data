#This function reads in multiple files, cleans the data, merges the data, and
#then groups the data to calculate the mean of the various fields
run_analysis <- function(){

#Read the files
activities <- read.csv("activity_labels.txt", sep = "", header = FALSE)
features <- read.csv("features.txt", sep = "", header = FALSE)
trainingSet <- read.csv("train/X_train.txt", sep = "", header = FALSE)
testSet <- read.csv("test/X_test.txt", sep = "", header = FALSE)
trainingLabels <- read.csv("train/y_train.txt", sep = "", header = FALSE)
testLabels <- read.csv("test/y_test.txt", sep = "", header = FALSE)
testSubjects <- read.csv("test/subject_test.txt", sep = "", header = FALSE)
trainSubjects <- read.csv("train/subject_train.txt", sep = "", header = FALSE)

#Merge the sets, labels, and subjects
mergedSets <- rbind(testSet, trainingSet)   
mergedLabels <- rbind(testLabels, trainingLabels)
mergedSubjects <- rbind(testSubjects, trainSubjects)

#Change column names
extractNames1 <- features[ ,2]
names(mergedSets) <- extractNames1

#Extracts only the measurements on the mean and standard deviation for each 
#measurement.

#First find the columns that have mean or std
haveMeanStd <- grepl("std|mean", names(mergedSets), ignore.case = TRUE)

#Update mergedSets
mergedSets <- mergedSets[haveMeanStd]

#Merge the labels and activties
extractNames2 <- merge(mergedLabels, activities, by.x = "V1", by.y = "V1")
mergedLabels <- extractNames2[,2]

#Descriptive activity names to name the activities in the data set
mergedSets <- cbind(mergedSubjects, mergedLabels, mergedSets)
names(mergedSets)[1:2] <- c("PersonID", "Activities")

#Merge the training and the test sets to create one data set to send back
groupdata <- group_by(mergedSets, PersonID, Activities)
thedata <- summarise_each(groupdata, funs(mean))

write.csv(thedata, file = "tidyData.csv")

return(thedata)
}
