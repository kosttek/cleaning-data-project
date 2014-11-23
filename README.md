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