## RentalApp
TableView App with customized Rows iOS 8 upwards.  
## Overview
This is a single view iOS 10 application that displays some images stored locally.  The app has a 
UINavigationController, which controls the data displayed on the TableView cells.  At the moment all the data is
loaded statically from arrays.  The functionality to add data from a json web service will be added soon.
The code is in RentAppTableViewController.swift
## Image Loader
The image loader class will load the images dynamically from Amazon S3 or some other object storage service but 
it is not currently being used
## Loading text data
The text data used in the app such as prices are loaded dynamically from a web service, which pulls the data from
an SQL database
## JSON Parsing
The returned data fetched asynchronously using URLSession and parsed for processing in the app 
