# Introduction
Zillow introduces the Zestimate to estimate market value for a home, computed based on 7.5 million statistical and machine learning models that analyze hundreds of data points on each property.Nowadays, the Zestimate has around 5% median margin of error. The goal of the Zillow Prize challenge is to build a model to further improve the Zestimate residual error, which is defined as $$logerror=log(Zestimate)−log(SalePrice)$$ for properties in three counties (Los Angeles, Orange and Ventura, California) at 6 timepoints(October 2016, November 2016, December 2016, October 2017 , and November 2017.


#Data description
I have two datasets as my training dataset. properties_2016.csv contains all the properties in the three counties with their home features for 2016, specifically, it contains 57 home features along with the outcome variable log error for 2985217 properties. train_2016.csv contains all the transactions before October 15th 2016,plus some of the transactions after October 15, 2016. This dataset contains 90275 entries. I join the two datasets and use the joined dataset as my final training dataset.


Steps

#1. EDA

#2. Feature engineer 

Deal with missing data

Geo-location features (Latitude, longitude, zip, regioncity, regionneighbourhood, region county,  Federal Information Processing Standard code, etc.)

Properties features ( Number of bedrooms in home, number of bathrooms in home,total area, number of pools on the lot, total square footage of all pools on property,etc.)

Tax features (The total tax assessed value of the parcel,the year of the property tax assessment ,year for which the unpaid propert taxes were due, etc.)

#3. Modeling 
