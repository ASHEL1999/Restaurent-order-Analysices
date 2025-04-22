# project over review
The project focuses on analyzing restaurant order data using SQL. The objective is to extract insights such as total revenue, customer behavior, order trends, and menu performance. It involves querying a relational database with tables like orders and order_details.
# Data sources
Sales Data : The primary dataset used for this analysices is the restaurent order analysices .csv, containg detailed information about  each sale made by day restaurent .
# Tools :
- Excel -    Data cleaning 
-  sql  server - Data analysices 
-  power point - creating reports
# Data cleaning preparation 
1.Data loading and inspection

2.Handling missing values

3.Data cleaning  and formatting
# Explotary Data Analysices 
- count the total number of order placed ?
- Retrieve all orders with their respective order details using INNER JOIN?
- Identify the top1 customers who havespent the most ?
- Count the number of orders per customer ?
- find the total sum of price ?
 # Data Analysis
 Including some intersting  code  feactures  worked with
 '''sql
 SELECT order_date,
SUM(total_price) AS
total_sales FROM orders
GROUP BY order_date
ORDER BY total_sales DESC
LIMIT 1;
'''
# Result
Key insights from your analysis include:

Total revenue generated: Retrieved using SUM(total_price) (Query 1).

Top spending customers: Identified using GROUP BY customer_id ORDER BY SUM(total_price) (Query 7).

Top-selling menu items: Aggregated using SUM(quantity) grouped by menu_item (Query 6).

Peak ordering hours & dates: Busiest hours and top sales days identified (Queries 10, 11, 14).

Customer behavior: Frequent buyers, recent purchases, and menu preferences (Queries 13, 27, 43).
# limitations:
No visual representation (charts or graphs) to supplement the queries.

No advanced analytics like clustering or prediction (purely SQL-based).

Data quality checks are minimal—more cleaning (e.g., checking for nulls, outliers) could strengthen analysis.

The project assumes the schema and data are correct and up to date.









  
