# Getting and Cleaning Data - Final Project

Data source is the UCI Machine Learning Repository. Data collected from the accelerometers from the Samsung Galaxy S smartphone. In this project, data collected from the accelerometer and gyroscope of the Samsung Galaxy S smartphone was retrieved, combined, and cleaned to prepare a tidy data that can be used for later analysis.

The R script, run_analysis.R does the following:
  1. Downloads, unzips, and reads in all relevant data from the data set.
  2. Merges Test and Train data sets.
  3. Subsets for only the relevant variables (mean and std) in the data set.
  4. Implements activity labels into data set.
  5. Appropriately labels data set with descriptive variable names.
  6. Creates an independent, tidy data set with the average of each variable for each activity and subject.

Data is stored in "tidy.data.txt" file located in this repository.
