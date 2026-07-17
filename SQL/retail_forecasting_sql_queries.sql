SELECT * FROM retail_forecasting.df_feature_eng;
SELECT COUNT(*) FROM df_feature_eng;
DESCRIBE df_feature_eng;
SELECT * FROM df_feature_eng LIMIT 10;

-- Total sales
SELECT SUM(Weekly_Sales) AS Total_Sales
FROM df_feature_eng;

-- Average weekly sales
SELECT AVG(Weekly_Sales) AS Average_Weekly_Sales
FROM df_feature_eng;

-- Top 10 stores
SELECT Store,
       SUM(Weekly_Sales) AS Total_Sales
FROM df_feature_eng
GROUP BY Store
ORDER BY Total_Sales DESC
LIMIT 10;

-- Bottom 10 Stores
SELECT Store,
       SUM(Weekly_Sales) AS Total_Sales
FROM df_feature_eng
GROUP BY Store
ORDER BY Total_Sales
LIMIT 10;

-- Sales by dept
SELECT Dept,
       SUM(Weekly_Sales) AS Total_Sales
FROM df_feature_eng
GROUP BY Dept
ORDER BY Total_Sales DESC;

-- Holiday vs non holiday
SELECT Holiday,
       AVG(Weekly_Sales) AS Avg_Sales
FROM df_feature_eng
GROUP BY Holiday;

-- Monthly sales
SELECT Month,
       SUM(Weekly_Sales) AS Total_Sales
FROM df_feature_eng
GROUP BY Month
ORDER BY Month;

-- Year-wise sales
SELECT Year,
       SUM(Weekly_Sales) AS Total_Sales
FROM df_feature_eng
GROUP BY Year;

-- Sales by Store-type
SELECT Type,
       AVG(Weekly_Sales) AS Avg_Sales
FROM df_feature_eng
GROUP BY Type;
