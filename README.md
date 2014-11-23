cleaning-data-project
=====================

courser cleaning data project

## Prepare to run
You need:
install.packages2("reshape2")

in main directory you should unzip data 

direcotry should look like this


cleaning-data-project  

    ├── codebook.md  

    ├── README.md  

    ├── run_analysis.R  

    └── UCI HAR Dataset  

        ├── activity_labels.txt  

        ├── features_info.txt 

        ├── features.txt  

        ├── README.txt  

        ├── test  

        │   ├── Inertial Signals  

        │   │   ├── body_acc_x_test.txt  

        │   │   ├── body_acc_y_test.txt  

        │   │   ├── body_acc_z_test.txt  

        │   │   ├── body_gyro_x_test.txt  

        │   │   ├── body_gyro_y_test.txt  

        │   │   ├── body_gyro_z_test.txt  

        │   │   ├── total_acc_x_test.txt  

        │   │   ├── total_acc_y_test.txt  

        │   │   └── total_acc_z_test.txt  

        │   ├── subject_test.txt  

        │   ├── X_test.txt  

        │   └── y_test.txt  

        └── train  

            ├── Inertial Signals  

            │   ├── body_acc_x_train.txt  

            │   ├── body_acc_y_train.txt  

            │   ├── body_acc_z_train.txt  

            │   ├── body_gyro_x_train.txt  

            │   ├── body_gyro_y_train.txt  

            │   ├── body_gyro_z_train.txt  

            │   ├── total_acc_x_train.txt  

            │   ├── total_acc_y_train.txt  

            │   └── total_acc_z_train.txt  

            ├── subject_train.txt 

            ├── X_train.txt  

            └── y_train.txt 


## Run script

1. Open R console in main project direcotry
2. source("run_analysis.R")

as a result you should get file tiny tidydataset.txt in main directory

## How script works

There was five step to do in our run_analysis.R script

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.  
5 .From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Every above step or part of these step are marked in script file like   
      #2# Merges the training and the test sets to create one data set.   
Which for example coresponds to secound step  

* First of all we get all data from training and test sets also we get features and activity labels.

* Next we get only this variables from X set which have "std" and "mean" in name
 this is what grep.mean.and.std() function do.
 After running function grep.mean.and.std there is also vector of column names in resault which should be applied to data set.

* After this, we are merging train and test data and change names of columns subject and activity
 this is what bind.test.train() function do.

* Uses descriptive activity names to name the activities in the data set

* tidy data set create by melting and casting data using function mean. 

* save data with tiny data set to file "tidydataset.txt"
