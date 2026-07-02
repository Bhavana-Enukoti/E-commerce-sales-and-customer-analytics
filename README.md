 E-Commerce Sales & Customer Analytics Dashboard

## Project Overview

This project analyzes e-commerce sales data to uncover business insights related to sales performance, customer behavior, product profitability, customer retention, and revenue forecasting. The workflow combines **Excel, MySQL, Python, and Power BI** to perform data cleaning, analysis, predictive modeling, and interactive dashboard visualization.

## Tools & Technologies

- Excel
- MySQL
- Python (Pandas, Matplotlib, Scikit-learn)
- Power BI

## Project Workflow

1. Cleaned and prepared the dataset in Excel.
2. Imported data into MySQL and performed SQL analysis.
3. Connected Python to MySQL for advanced analytics.
4. Performed RFM Analysis, Customer Retention Analysis, and Revenue Forecasting.
5. Built interactive dashboards in Power BI.

## Key Analyses Performed

### Sales Performance Analysis

- Total Sales
- Total Profit
- Total Orders
- Sales by Category
- Sales by Region

### Customer Segmentation (RFM Analysis)

Customers were segmented based on:

- Recency
- Frequency
- Monetary Value

Customer segments include:

- Champions
- Loyal Customers
- Potential Loyalists
- At Risk Customers
- Lost Customers

### Product Profitability Analysis

- Profit by Category
- Profit by Sub-Category
- Top Profitable Products

### Customer Retention Analysis

- Repeat Customer Analysis
- Purchase Frequency Analysis

### Revenue Forecasting

- Monthly Revenue Trend Analysis
- Revenue Forecasting using Linear Regression
- Forecast Visualization

## Power BI Dashboard

The interactive dashboard includes:

- Sales Performance Dashboard
- Customer Segmentation Dashboard
- Product Profitability Dashboard
- Revenue Forecast Dashboard

## Project Outcomes

- Identified high-value customer segments for targeted retention strategies.
- Evaluated product and category profitability.
- Analyzed customer purchasing behavior and repeat purchase patterns.
- Forecasted future revenue trends using Machine Learning.
- Developed interactive Power BI dashboards for business reporting.

## Repository Structure

```text
E-Commerce-Sales-Analytics/
│
├── dataset/
│   └── Ecommerce_Dataset.xlsx
│
├── sql/
│   └── SQL_Queries.sql
│
├── python/
│   └── RFM_Analysis.ipynb
│
├── outputs/
│   ├── rfm_results.csv
│   └── forecast_results.csv
│
├── powerbi/
│   └── ECommerce_Dashboard.pbix
│
└── README.md
```

## Workflow

- **Excel:** Cleaned and prepared the e-commerce dataset.
- **MySQL:** Imported the dataset and performed SQL analysis.
- **Python:** Imported the dataset performed RFM Analysis, Customer Retention Analysis, and Revenue Forecasting, then generated `rfm_results.csv` and `forecast_results.csv`.
- **Power BI:** Imported the Python output files and created interactive dashboards for:
  - Sales Performance
  - Customer Segmentation (RFM)
  - Product Profitability
  - Revenue Forecasting

## Author

**Bhavana Enukoti**
