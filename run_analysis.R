#### run_analysis.R
## note different requirement order

## R1

# combine test
subject.test <- read.table("subject_test.txt")
y.test <- read.table("y_test.txt")
x.test <- read.table("X_test.txt")
test.full <- cbind(subject.test,y.test,x.test)

# combine train
subject.train <- read.table("subject_train.txt")
y.train <- read.table("y_train.txt")
x.train <- read.table("X_train.txt")
train.full <- cbind(subject.train,y.train,x.train)

# combine test and train
int.set <- rbind(test.full, train.full)

# backup intermediate set
write.table(int.set, file="intSet.txt")

## R3
# assign activity name to activity (V1.1)
int.set$V1.1 <- activity[match(int.set$V1.1, activity$V1),2]

#assign descriptive column names (for intermediate set)
names(int.set) [1]<-"Subject"
names(int.set) [2]<-"activity"
names(int.set) [3]<-"V1"
names(int.set) <- gsub("V", "", names(int.set))
names(int.set) <- var.name[match(names(int.set),var.name$V1),2]

## R2
#Extract only the mean measurements and the StdDev for each measurement
#New intermediate data set (data frame) 

sel <- int.set[, grep("mean|std", colnames(int.set))]
sel.df <- as.data.frame(sel)
int.set2 <- cbind(int.set[1:2], sel.df)

#backup 2nd intermediate set
write.table(int.set2, file="intSet2.txt")

## R4

names(int.set2) <- gsub("Acc", "Acceleration", names(int.set2))
names(int.set2) <- gsub("Gyro", "Gyroscope", names(int.set2))

## R5

#Order the set by columns [1:2]
int.set.2 <- int.set.2[order(int.set.2[,1], int.set.2[,2]), ]

#Determine the mean of each of the quantitative variables [3:81], grouping by the qualitative variables [1:2]
tidySet <- aggregate(int.set.2[3:81], int.set.2[1:2], FUN=mean)

#backup tidy set
write.table(tidySet, file="tidySet.txt")