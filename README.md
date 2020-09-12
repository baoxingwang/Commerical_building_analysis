
![](https://www.xendoo.com/wp-content/uploads/2019/02/Benefits-Owning-Your-Small-Business-Property-Blog-795x500.jpg)

# Project 3: Data-Estate

Team and Responsibilities:
* Jean-Paul Mitterhofer
    * Finding data
    * Storing raw data in database
    * Data Munging
    * Create tableua visuals 
    * Setup flask
    * Assist with html, css
    * Readme, PPT
    * Organized repository
* Mahathi Veluri
    * Created webpages
        * navigation bar
        * layout using bootstrap 
        * footer
    * Functionality with javascript and jquery
    * Developed the css file
    * Data Munging
    * Create tableau visuals
* Baoxing Wang
    * Formatting Machine Learning data
    * Correct errors, deal with missing values, normalization
    * Choose models based on time series
    * Assisted in evaluating models
    * Parameter tunning
    * Make predictions
    * Create tableau visualizations
    * PPT
* Xiaodi Lin
    * The quantity & quality of data to use for Machine Learning
    * Executing the machine learning models
    * Make a prediction correctly as often as possible
    * Used 4 models to make the forecasting
    * Evaluate the models and training
    * Make predictions 

## Project Description

A Dashboard of the potential tenants for Commercial Real-Estate Companies can target. Map of building locations with new and established companies based on zipcode. End goal: A list on the left side panel displaying company name, similar to a google map search. This can possibly change as we further understand our data.

## 


 ## Requirements
* MySQL Database
* MatPlotLib
* D3 javascript
* Tableau
* Machine Learning - SARIMAX Model
## Installation

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install the following:

```bash
pip install -r requirements.txt
```

## Folder And File Description

#### Repository folders and main file descrption:
1. [arima_ml_models/](https://github.com/jmitterh/Project_3_Potential_Marketing/tree/master/arima_ml_models)
    * [images/](https://github.com/jmitterh/Project_3_Potential_Marketing/tree/master/arima_ml_models/images)
        * [historical_output/](https://github.com/jmitterh/Project_3_Potential_Marketing/tree/master/arima_ml_models/images/historical_output)
            * *Png outputs of the machine learning process*
        * [seasonal_output/](https://github.com/jmitterh/Project_3_Potential_Marketing/tree/master/arima_ml_models/images/seasonal_output)
            * *png outputs of the machine learning process*
    * [model/](https://github.com/jmitterh/Project_3_Potential_Marketing/tree/master/arima_ml_models/models)
        * [auto_model/](https://github.com/jmitterh/Project_3_Potential_Marketing/tree/master/arima_ml_models/models/auto_model)
            * csv files - *Are output of each zipcode csv file after running the machine learning algorithm*
            * MasterModel_zip1_fullsteps.ipynb - *This is the Model used in our project. Ten year monthly number of companies in the time span*
        * [historical model/](https://github.com/jmitterh/Project_3_Potential_Marketing/tree/master/arima_ml_models/models/historical_model)
            * ARIMA_model.ipyinb - *Auto model template, generate the most optimal model*
    * [Resources/](https://github.com/jmitterh/Project_3_Potential_Marketing/tree/master/arima_ml_models/Resources)
        * csv files  - *That contain the zipcode data for machine learning models*
2. [CRE_Marketing_Data/](https://github.com/jmitterh/Project_3_Potential_Marketing/tree/master/CRE_Marketing_Data)
    * [database/](https://github.com/jmitterh/Project_3_Potential_Marketing/tree/master/CRE_Marketing_Data/database)
        * marketing_schema.sql - *Script to run for the creation of our mysql database*
    * [HotelOccupancyTaxData/*](https://drive.google.com/drive/folders/1KxHymw6Mu5s5kwpUOvlGX1K-E2O_GOQQ?usp=sharing)
        * Raw Data Files - *Text and csv files of our sources data and raw data in csv form. This data was also stored in our MySQL database*
        * [formattedData/](https://drive.google.com/drive/folders/1KxHymw6Mu5s5kwpUOvlGX1K-E2O_GOQQ?usp=sharing)
            * formatted Data Files - *stored as csv, files were too large to store in github*
    * BuildingData.ipynb - *Hcad data munging to only have commercial building information*
    * CreatingDirectoryDescription.txt - *Instruction on creating folders to store data from the sources mentioned in this document*
    * db_setup.txt - *Credentials used to connect to our Database. Change .txt to .py*
    * HotelTaxPayerData.ipynb - *Pulling our main source of companies filing for franchise tax permits from the comptroller website. This information is captured and added to the database*
    * HoustonData.ipynb - *Pulling our main source of data from our databse and munging it to provide only houston information with non-repeating values*
3. [static/](https://github.com/jmitterh/Project_3_Potential_Marketing/tree/master/static)
    * [img/](https://github.com/jmitterh/Project_3_Potential_Marketing/tree/master/static/img)
        * png files - *Color for our app pages, and icons for clickable links on navigation bar*
    * [jsData/](https://github.com/jmitterh/Project_3_Potential_Marketing/tree/master/static/jsData)
        * HOUfran.csv - *List of current new companies. This data is from November 2019 through March 2020*
    * [model_process/](https://github.com/jmitterh/Project_3_Potential_Marketing/tree/master/static/model_process)
        * [historical_output/](https://github.com/jmitterh/Project_3_Potential_Marketing/tree/master/static/model_process/historical_output)
            * png files - *Output of our historical machine learning process. This is displayed on the home/index page*
        * [seasonal_output/](https://github.com/jmitterh/Project_3_Potential_Marketing/tree/master/static/model_process/seasonal_output)
            * png files - *Output of our seasonal machine learning process. This is displayed on the home/index page*
    * modalPickPopUp.js - *Javascript funcationality of the thumbnail pop for the home/index page*
    * mystyle.css - *styles page of our html pages*
    * table_filter.js - *Javascript functionality for the viusal.html*
4. [templates/](https://github.com/jmitterh/Project_3_Potential_Marketing/tree/master/templates)
    * index.html - *Main page of our flask app. Description of the processes we used for our machine learning, and page output description*
    * prediction.html - *Page of our process of creating our ML*
    * visual.html - *Our data visually displayed page*
5. .gitignore - *Files/folders to ignore from being pushed into the repository. Files such as vscode, pycache, and ipynb checkpoints. Also ignored the folders that stored the large csv files of our data.*
6. app.py - *Flask app initiation*
7. Data-Estate Presentation.pptx - *Power Point Presentation*
8. LICENSE - *MIT license description*
9. README.md - *This readme file that you are viewing*
10. requirments.txt *Pip install dependencies for this application*

*  *asterisk represents folders that were ignored to our repository, but were used for our project.



#### Python Plotly and MYSQL
***Webpage:***
* *Home Page:* Brief introduction of who we are and what we are trying to do with the application.
* *Predictions Page:* Visual description of what models we used for machine learning.
* *Visuals Page:* Our displays providing context to our target audience. 


## Sources
* [***Comptroller Of Public Accounts Secure Information and File Transfer***](https://comptroller.texas.gov/about/policies/open-records/)
 CPA SIFT - Texas Comptroller's Secure Information and File Transfer (SIFT) system. This tool will allow you to download secured files.
 Available datasets: 

    * Hotel Tax Receipts: Franchise Tax Permit


* [***Harris County Appraisal District***](https://hcad.org/)
 HCAD - is a political subdivision of the State of Texas established in 1980 for the purpose of discovering and appraising property for ad valorem tax purposes for each taxing unit within the boundaries of the district.


## Type of ML Analysis
* SARIMA Model - Seasonal Autoregressive Integrated Moving Average, SARIMA or Seasonal ARIMA, is an extension of ARIMA that explicitly supports univariate time series data with a seasonal component.
It adds three new hyperparameters to specify the autoregression (AR), differencing (I) and moving average (MA) for the seasonal component of the series, as well as an additional parameter for the period of the seasonality.



## Considerations
The data from the Comptroller consist of over 4 million datasets. We used google drive and MYSQL to store the data. The full amount of data could not be stored in GitHub due to the 50mb limit.


## License
[MIT](https://choosealicense.com/licenses/mit/)