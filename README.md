# Travel, Tourism & Hospitality - Customer Retention and Dynamic Pricing Analysis

## Excel Data Preparation

- Imported raw hospitality dataset into Excel  
- Handled missing values and removed duplicates  
- Standardized date formats and categorical values  
- Ensured consistency across numerical fields  
- Prepared clean dataset for SQL database import  

The dataset was cleaned and structured in Excel before being used for further SQL and analytical processing.


## SQL Analysis

- Created a relational database to store cleaned hospitality data  
- Imported dataset into MySQL and validated data integrity  
- Performed SQL queries to extract key business metrics:
  - Total bookings  
  - Total revenue  
  - Cancellation rate  
  - Average daily rate  
  - Revenue By City

- Conducted analysis on:
  - City-wise booking distribution  
  - Monthly booking trends  
  - Customer type segmentation  

- Implemented A/B testing analysis using SQL to compare cancellation rates between groups  

- Generated aggregated datasets which were exported for dashboard development

SQL was used to transform raw transactional data into meaningful aggregated insights for further analysis and visualization.

## Python Exploratory Data Analysis (EDA)

- Performed exploratory data analysis using Python libraries such as Pandas, NumPy, Matplotlib, and Seaborn  
- Loaded and inspected the dataset to understand structure, data types, and distributions  
- Identified missing values and ensured data consistency  

### Key Analyses Performed

- **Cancellation Analysis:**  
  Examined the proportion of canceled vs non-canceled bookings to understand overall cancellation behavior  

- **Lead Time Analysis:**  
  Analyzed the relationship between lead time and cancellations to identify how booking timing impacts cancellation probability  

- **Revenue Distribution:**  
  Visualized total price distribution to understand revenue spread and detect outliers  

- **City-wise Performance:**  
  Aggregated revenue across cities to identify top-performing locations  

- **Correlation Analysis:**  
  Generated a correlation matrix to identify relationships between numerical features such as lead time, stay duration, and pricing  

### Insights

- Higher lead time bookings tend to show increased cancellation rates  
- Revenue distribution is skewed, indicating variation in booking values  
- Certain cities contribute significantly more to total revenue  
- Feature relationships help in selecting variables for further analysis and modeling  

This EDA step helped in uncovering patterns and preparing the dataset for advanced analysis such as A/B testing and predictive modeling.

---

## Python Exploratory Data Analysis (EDA)

Performed exploratory data analysis on the hospitality booking dataset using Python libraries such as Pandas, NumPy, Matplotlib, and Seaborn to identify booking trends, customer behavior, and cancellation patterns.

### Key Analyses Performed
- Analyzed booking and cancellation trends  
- Studied the relationship between lead time and cancellations  
- Compared estimated revenue, actual revenue, and revenue loss due to cancellations  
- Performed city-wise and customer segment analysis  
- Generated correlation matrix to identify relationships between numerical features  

### Visualizations Created
- Cancellation distribution charts  
- Revenue distribution plots  
- Lead time analysis visuals  
- City-wise booking and revenue comparisons  
- Correlation heatmaps  

### Key Insights
- Higher lead time bookings showed increased cancellation probability  
- Revenue loss due to cancellations significantly impacted business performance  
- Certain cities contributed more to overall revenue  
- Insights generated from EDA supported further A/B testing and predictive modeling

## Dashboard Development

Developed an interactive Power BI dashboard to visualize booking trends, revenue insights, cancellations, and customer behavior.

### Dashboard Features
- KPI cards for bookings, revenue, and cancellation rate  
- Monthly booking and revenue trends  
- City-wise revenue analysis  
- Lead time category analysis  
- Interactive slicers and filters  

### Dashboard Preview

<p align="center">
  <img src="dashboard/Dashboard_preview.png" alt="Dashboard Preview" width="900">
</p>


## Team and Responsibilities:-
Hanok Kumar(TL) - SQL, Excel & Github manager
Subhojit -  Excel & Dashboard
Harsh - Python(Churn Analysis)
Sampath - Python(EDA)
