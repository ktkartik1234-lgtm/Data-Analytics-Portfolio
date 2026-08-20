# 📑 Advanced Excel Modeling, Analytics & Operations Suite

[![Microsoft Excel](https://img.shields.io/badge/Microsoft_Excel-2021%2F365-217346.svg?logo=microsoftexcel&logoColor=white)](https://www.microsoft.com/excel)
[![Pivot Tables](https://img.shields.io/badge/Pivot_Tables-Advanced_Analytics-107C41.svg)](https://support.microsoft.com/excel)
[![Data Modeling](https://img.shields.io/badge/Excel-Data_Modeling_%26_Formulas-0E5C2F.svg)](https://support.microsoft.com/excel)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## 📌 Executive Overview
Microsoft Excel remains the global standard for rapid business modeling, financial reconciliation, operational reporting, and executive dashboarding. This repository contains three comprehensive, multi-table Excel analytical projects demonstrating mastery of **Advanced Formulas**, **Relational Data Modeling**, **Interactive Pivot Tables**, **Dynamic Slicers**, and **Executive KPI Dashboards**.

---

## 📁 Repository Structure

```text
excel project/
│
├── 📊 amazon_sales_analysis.xlsx              # Multi-Table E-Commerce Sales & Target Variance Model
├── 📊 students_social_media_analysis.xlsx      # Demographic & Academic Impact Multi-Tab Workbook
├── 📊 Quiz_Assessment_project.xlsx             # Dynamic Assessment Engine with Automated Scoring
└── 📄 README.md                               # Project documentation
```

---

## 🛒 Project 1: Amazon Multi-Table E-Commerce Sales & Target Variance Dashboard (`amazon_sales_analysis.xlsx`)

### 🎯 Business Context
E-commerce retail operations require real-time visibility into regional order fulfillment, product category profitability, and sales representative quota attainment.

### 📐 Multi-Table Data Architecture
* **`AmazonSales` (Fact Table)**: 1,000 granular order transactions (Order ID, Order Date, Delivery Date, Customer ID, Product ID, Region, Quantity, Unit Price, Total Amount, Delivery Status).
* **`ProductMaster` (Dimension)**: Product Catalog (SKU, Product Name, Category: *Electronics*, *Toys*, *Apparel*, *Home*, Cost Price, Descriptions).
* **`CustomerMaster` (Dimension)**: 50 Customer Accounts (Account Type: *Prime*, *Business*, *Standard*, Geographic City, State).
* **`RegionGoals` (Target Dimension)**: Regional Sales Quotas across Central ($97.5k), East ($50.5k), North, South, and West.

### 📊 Dashboard & Analytical Features
* **Dynamic Slicers**: Filter by Product Category, Region, Delivery Status, and Order Month.
* **Target vs Actual Variance Modeling**: Dynamic formulas calculating regional quota percentage attainment.
* **Fulfillment SLA Tracking**: Lead time formulas (`Delivery Date - Order Date`) and On-Time Delivery Rate KPIs.
* **Category Profitability Matrix**: Revenue, Cost of Goods Sold (COGS), and Gross Margin contribution.

---

## 📱 Project 2: Student Social Media & Academic Impact Analysis (`students_social_media_analysis.xlsx`)

### 🎯 Business Context
A structured multi-tab analytical study examining behavioral patterns, screen time distribution, and academic performance among university students.

### 📑 Workbook Tab Structure
1. **`Cover`**: Executive overview, KPI scorecards, and navigational index.
2. **`Raw Data`**: 705 cleaned student survey records.
3. **`Summary Stats`**: Parametric summary statistics (Mean, Median, Standard Deviation, IQR, Mode).
4. **`Platform Analysis`**: Platform-specific engagement metrics (Instagram, TikTok, YouTube, WhatsApp).
5. **`Addiction Analysis`**: Addicted score distribution and behavioral risk categorization.
6. **`Academic Impact`**: Multi-variable cross-tabulations assessing GPA and study hour trade-offs.
7. **`Demographics`**: Country-level, age-cohort, and gender comparative breakdowns.

### 🧮 Excel Formulas & Techniques Utilized
* Statistical: `AVERAGEIFS()`, `COUNTIFS()`, `SUMIFS()`, `MEDIAN()`, `STDEV.S()`, `PERCENTILE.INC()`.
* Lookup & Reference: `XLOOKUP()`, `INDEX() + MATCH()`, `VLOOKUP()`.
* Logical & Text: Nested `IF()`, `IFS()`, `AND()`, `OR()`, `TEXT()`, `DATEDIF()`.
* Visual Formatting: Custom multi-rule conditional formatting (Data Bars, Color Scales, Icon Sets).

---

## 📝 Project 3: Interactive Assessment Scoring Engine (`Quiz_Assessment_project.xlsx`)

### 🎯 Business Context
An automated evaluation and grading model designed for dynamic test administration, real-time score calculation, and performance analytics.

### 📑 Workbook Architecture
* **`Interactive Quiz`**: Front-end test interface with interactive option selection, input validation, and real-time completion status.
* **`Instructions & Guide`**: User guidelines and navigation rules.
* **`Answer Key & Solutions`**: Relational lookup table matching user responses against verified answer keys with explanatory context.

---

## 🚀 How to Use These Workbooks
1. Open any `.xlsx` file using Microsoft Excel 2016, 2019, 2021, or Microsoft 365.
2. Enable macros/content if prompted to view interactive pivot features.
3. Explore the `DASHBOARD` and `Summary Stats` sheets for visual charts and interactive slicers.

---

## 👤 Author & Contact
* **Kartik Tripathi**
* **LinkedIn**: [linkedin.com/in/kartik-tripathi-725697383](https://www.linkedin.com/in/kartik-tripathi-725697383)
* **GitHub**: [github.com/ktkartik1234-lgtm](https://github.com/ktkartik1234-lgtm)
* **Email**: [ktkartik1234@gmail.com](mailto:ktkartik1234@gmail.com)
