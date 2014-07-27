### CourseProject Kathi Seidl-Rathkopf
#
# run_analysis.R

# --------- prepare feature names --------- #
# load in the feature names file 
FeatureLabels  <- read.table("features.txt", header = FALSE)
FeatureLabels  <- as.character(base::t(FeatureLabels$V2))

# determine which of the columns contain information about std and means so that we can restrict the dataset to those
RelevantColumns <- 1
for (i in seq_along(FeatureLabels)){
        RelevantColumns[i] <- grepl("mean()", FeatureLabels[i], fixed = TRUE) || grepl("std()", FeatureLabels[i], fixed = TRUE)
}

#  manually include a C1 (subjID) and C2 (activity labels) and the last column (stage)
RelevantColumns<- c(1,1,RelevantColumns)

# --------- prepare training set --------- #
# load in TrainingFiles
TrainingData    <- read.table("./train/X_train.txt", header = FALSE, col.names= FeatureLabels) 
TrainingLabels  <- read.table("./train/Y_train.txt", header = FALSE, col.names = "activity labels")
TrainingSubjs   <- read.table("./train/subject_train.txt", header = FALSE, col.names = "subjID") 

# combine all the training information
Training <- cbind(TrainingSubjs, TrainingLabels, TrainingData)

# --------- prepare test set --------- #
# load in TestFiles
TestData    <- read.table("./test/X_test.txt", header = FALSE, col.names= FeatureLabels) 
TestLabels  <- read.table("./test/Y_test.txt", header = FALSE, col.names = "activity labels")
TestSubjs   <- read.table("./test/subject_test.txt", header = FALSE, col.names = "subjID") 

# combine all the test information
Test <- cbind(TestSubjs, TestLabels, TestData)

# --------- create the complete dataset --------- #

# merging training and test data
CompleteDataset <- rbind(Test,Training, all = TRUE)

# extracting only the relevant columns
CompleteDataset <- CompleteDataset[ ,as.logical(RelevantColumns)]

# relabel the acitivity labels column
# 1-WALKING; 2-WALKING_UPSTAIRS; 3-WALKING_DOWNSTAIRS;
# 4-SITTING; 5-STANDING; 6-LAYING

Labels <- c("Walking", "Walking_upstairs", "Walking_downstairs", "Sitting", "Standing", "Laying")
for(i in seq_along(Labels)){
        CompleteDataset$activity.labels[CompleteDataset$activity.labels == i] <- Labels[i]
}

# clean up the variable names
CompleteDataset_Names <- names(CompleteDataset)
CompleteDataset_Names <- gsub("...", "_", CompleteDataset_Names, fixed =TRUE) #remove the commas in the GDP column
CompleteDataset_Names <- gsub("BodyBody", "Body", CompleteDataset_Names, fixed =TRUE) #remove the commas in the GDP column
CompleteDataset_Names <- gsub("..", " ", CompleteDataset_Names, fixed =TRUE) #remove the commas in the GDP column
names(CompleteDataset) <- CompleteDataset_Names



####### create a dataset that contains the average of each variable for each participant and each variable #######

# melt the data set (ids <- subjID and activity.label, everything else are the measurement variables)
data_m <- melt(CompleteDataset, measure.vars=3:ncol(CompleteDataset)) 

# calculate the average for each variable 
averagedData <- dcast(data_m, subjID + activity.labels ~variable, mean)

# save the output data
write.csv(averagedData, "./MergedTrainingTest_averages.csv", row.names = FALSE)


