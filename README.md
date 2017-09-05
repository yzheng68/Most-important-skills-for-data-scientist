# Zillow Project

The goal of the Zillow Prize challenge is to build a model to improve the Zestimate residual error in order to ensure homeowners have a trusted way to monitor their assests at any given point in time. “Zestimates” are estimated home values based on 7.5 million statistical and machine learning models that analyze hundreds of data points on each property.

#Goal 

Using training sets to predict the log error 6 time points for all properties: October 2016 (201610), November 2016 (201611), December 2016 (201612), October 2017 (201710), November 2017 (201711), and December 2017 (201712). The log error is defined as logerror=log(Zestimate)−log(SalePrice).

#Data

Training sets: a full list of real estate properties in three counties (Los Angeles, Orange and Ventura, California) data in 2016 and all the transactions before October 15th 2016,plus some of the transactions after October 15, 2016.

Test set:  all the properties in October 15, 2017, to December 15, 2017.

#Steps

#1. EDA

#2. Feature engineer 
Geo-location features (Latitude, longitude, zip, regioncity, regionneighbourhood, region county,  Federal Information Processing Standard code, etc.)

Properties features ( Number of bedrooms in home, number of bathrooms in home,total area, number of pools on the lot, total square footage of all pools on property,etc.)

Tax features (The total tax assessed value of the parcel,the year of the property tax assessment ,year for which the unpaid propert taxes were due, etc.)

#3. Modeling 
