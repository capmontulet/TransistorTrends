# Transistor Trends

## Overview
This repository analyzes the evolution of transistor counts in processors over time, exploring trends and detecting outliers. The analysis includes:

- Linear and Log-Linear Regression: Examining transistor growth patterns.
- Visualization: Plotting transistor count trends over the years.
- Outlier Detection: Identifying anomalies using Grubbs' Test.

## Dataset

The dataset (TransistorCount.xlsx) contains four columns:

- Processor Name
- Transistor Count
- Release Year
- Designer


## Linear Regression Plotting Results
This is a log-linear regression model, meaning it models the logarithm of Transistor count as a function of Release Year

![Rplotreg](https://github.com/user-attachments/assets/85c599ef-0e87-4b3e-8d33-10f374a611e8)



## Log-Linear Plotting Results
Log-transformed transistor count against release year

![Rplotlog](https://github.com/user-attachments/assets/f5117280-64dc-4bb2-9829-69c1830bb267)




## Outliers
Grubbs' Test is used to detect the most extreme outlier in the log-transformed transistor count data.

![outliers1](https://github.com/user-attachments/assets/dc4b8d8d-aca6-4b5a-ac1d-819d97c440b9)


The smallest outlier in the raw transistor count data is displayed when opposite = 'true'.

![outliers2](https://github.com/user-attachments/assets/ba3c4f32-0ba4-475d-a99e-3460eb83d34f)



