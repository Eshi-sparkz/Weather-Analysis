# 🌦️ Weather Condition Analysis (2012)

## 🧭 Overview

This project provides an analytical study of **2012 weather data** using **SQL** and **Power BI**.
It explores daily, monthly, and seasonal weather trends to uncover patterns in **temperature**, **humidity**, **pressure**, **visibility**, and **wind speed**.

The goal is to transform raw weather data into meaningful insights through structured SQL queries and an interactive Power BI dashboard.


## 🗃️ Data & Tools Used

| Tool                 | Purpose                                           |
| -------------------- | ------------------------------------------------- |
| 🗄️ **MySQL / SQL**  | Data querying, filtering, and pattern analysis    |
| 📊 **Power BI**      | Visualization and storytelling                    |
| 🧹 **Data Cleaning** | Handling missing and inconsistent weather entries |


## 🧩 SQL Analysis Highlights

The SQL script (`Weather condition.sql`) builds a database called **`weather_report`** and performs various analyses, including:

| Analysis Area              | Description                                      |
| -------------------------- | ------------------------------------------------ |
| 🌡️ **Temperature Trends** | Yearly, daily, and hourly temperature averages   |
| ❄️ **Extremes**            | Hottest and coldest days of the year             |
| ☁️ **Weather Frequency**   | Most common weather conditions (rain, fog, snow) |
| 💧 **Humidity Insights**   | Humidity distribution across temperature ranges  |
| 🌬️ **Wind Analysis**      | Identification of high wind days (>50 km/h)      |
| 👁️ **Visibility Checks**  | Days with below-average visibility               |
| 🧭 **Seasonal Summary**    | Average weather metrics by season (Winter–Fall)  |

> Each query was written to support data-driven storytelling within the Power BI dashboard.


## 📈 Power BI Dashboard

The Power BI file (`Capstone Work.pbix`) presents a **visual summary** of the SQL findings through:

* 📅 **Yearly and seasonal trends** for temperature and humidity
* 🌍 **Weather type distribution** (rain, snow, fog, etc.)
* 💨 **Wind and visibility variations**
* 📉 **Pressure changes across months**
* 🕒 **Hourly temperature comparison**

The dashboard enables users to interactively explore patterns and anomalies across the 2012 dataset.


## 💡 Key Insights

* 🌞 **Hottest months:** July–August showed the highest average temperatures
* ❄️ **Coldest period:** January–February recorded the lowest daily averages
* 🌫️ **Fog and snow** significantly reduced visibility
* 💨 **Wind speeds** above 50 km/h were rare but occurred sporadically
* 💧 **Humidity** was highest in cold and transitional months


## 📁 Repository Contents

```
📦 Weather-Condition-Analysis
 ┣ 📜 Weather condition.sql       # SQL queries for data analysis
 ┣ 📊 Capstone Work.pbix          # Power BI visualization dashboard
 ┗ 📘 README.md                   # Project summary and documentation
```


## 🚀 How to Use

1. **Run the SQL script** in MySQL to create and query the `weather_report` database.
2. **Export query results** (if needed) to Excel or CSV.
3. **Open `Capstone Work.pbix`** in Power BI to view and interact with visual insights.
