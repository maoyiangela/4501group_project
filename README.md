# 4501group_project
This is a group project for course 4501

group name: Group 27

Group members: Yi Mao, Yihan Bu

UNI for group members: UNIs:[ym2917,yb2548]

Description: 
This project is going to analyze the comflict between uber and Taxi. The dataset used in this project including hired-ride trip data from Uber and NYC Yellow cab from January 2009 through June 2015.

There are maining four parts：data preprocessing, data storing, data understanding, and data visualizing.

Part1:
For data procession part, we download and clean datasets and generate four datasets, which are datasets for yellow taxi, uber, daily weather, and hourly weather. 

For yellow taxi dataset, we use web scraping to download the Parquet files. Then we use the location ID to figure out longitudes and latitudes for pickup and drop off locations. Then, we calculated distance based on longitudes and latitudes. At the same time, we clean datasets. For example, we normalize column names to make them consistent among datasets (other processing including normalizing data type, drop null value, sampling…). 

For uber dataset, we read the local csv files and repeat the same process as for yellow taxi dataset. Uber original dataset is much cleaner than yellow taxi dataset. We choose time, location information and tip amount as uber dataset’s columns, then calculated distance column from location. And drop data with zero distance.
