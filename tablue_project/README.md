# 📈 Real Estate Market Valuation & Transaction Analytics (2011–2022)

[![Tableau](https://img.shields.io/badge/Tableau-Desktop_&_Public-E97627.svg?logo=tableau&logoColor=white)](https://www.tableau.com/)
[![Excel](https://img.shields.io/badge/Excel-Data_Source-217346.svg?logo=microsoftexcel&logoColor=white)](https://www.microsoft.com/excel)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## 📌 Executive Overview
Real estate valuation and capital allocation require multi-year longitudinal trend intelligence. This project analyzes **over a decade of property transaction records (2011–2022)** using **Tableau** to deliver actionable insights into housing market liquidity, regional sales concentration, property classification dynamics, and property tax assessment ratios.

---

## 📁 Repository Structure

```text
tablue_project/
│
└── 📂 real_estate_sales_dashboard/
    ├── 📂 dashboard/
    │   └── mini project tablue.twbx           # Packaged Tableau Workbook (Visualizations & Dashboards)
    ├── 📂 data/
    │   └── Real_Estate_Sales_2011-2022_GL_1.xlsx  # Multi-year longitudinal real estate sales dataset
    ├── 📂 requierments/
    │   └── Executive Summary.docx             # Formal Executive Business Report
    └── 📄 README.md                           # Project documentation
```

---

## 🎯 Key Analytical Objectives & Findings

### 1. Market Volume Trends & Macro Cycle Resilience
* **Surge Period (2020–2021)**: Real estate transactions reached historic peaks during the low-interest-rate environment, recording **58,344 sales in 2020** and peaking at **64,441 sales in 2021**.
* **Market Cooling (2022)**: Rising mortgage rates and macroeconomic headwinds triggered a market normalization in 2022, with total transaction volume tapering to **40,946 sales**.

```
Transaction Volume Trend:
2018: ─── 42,100
2019: ──── 44,500
2020: ────────────── 58,344 (Pandemic Real Estate Surge)
2021: ───────────────── 64,441 (All-Time Peak)
2022: ────────── 40,946 (Market Normalization)
```

### 2. Geographic Sales Performance & Regional Concentration
* **Top Municipality**: **Hot Springs** led all markets with over **$9.6 Billion in cumulative sales volume**, significantly outperforming major regional competitors.
* **Secondary Hubs**: **Asheville** ($5.2 Billion) and **Lubbock** ($5.1 Billion) formed the secondary tier of high-growth residential corridors.

### 3. Property Classification Dynamics: Volume vs Capital Concentration
* **Single Family Residences**: Represent the backbone of transaction volume, accounting for **over 273,000 transactions (>70% of total volume)**.
* **Apartment & Commercial Assets**: While representing lower unit frequency, Apartment assets commanded the largest capital transactions, averaging **~$8.4 Million per sale** compared to standard residential averages.

### 4. Valuation Sales Ratio Analysis (Assessed Value vs Final Sale Price)
The **Sales Ratio** evaluates property tax assessment fairness and pricing equilibrium:

$$\text{Sales Ratio} = \frac{\text{Assessed Value}}{\text{Final Sale Price}}$$

* In benchmark municipalities like **Kearney** and **Bellingham**, average sales ratios ranged between **1.08 and 1.11**.
* Ratios $> 1.0$ indicate that properties in these submarkets transacted at modest discounts relative to government-assessed valuation benchmarks, providing favorable entry points for institutional real estate acquirers.

---

## 📊 Tableau Dashboard Architecture & Features
* **Longitudinal Area Charts**: 12-year annual and monthly transaction volume trends.
* **Choropleth Regional Geo-Maps**: Sales density, average sale price, and capital flows across municipalities.
* **Calculated Fields & LOD Expressions**:
  - `FIXED` Level of Detail calculations for regional average sale price benchmarks.
  - Custom parameter-driven toggles between Total Sales Value, Average Price, and Volume.
* **Dynamic Slicers**: Property Type, Year Range (2011–2022), Town Selection, and Sales Ratio Filter.

---

## 🚀 How to Open the Tableau Dashboard
1. Download and install [Tableau Desktop](https://www.tableau.com/products/desktop) or [Tableau Public](https://public.tableau.com/).
2. Open `real_estate_sales_dashboard/dashboard/mini project tablue.twbx`.
3. Interact with the filters and geographic maps to drill into specific municipal data.

---

## 👤 Author & Contact
* **Kartik Tripathi**
* **LinkedIn**: [linkedin.com/in/kartik-tripathi-725697383](https://www.linkedin.com/in/kartik-tripathi-725697383)
* **GitHub**: [github.com/ktkartik1234-lgtm](https://github.com/ktkartik1234-lgtm)
* **Email**: [ktkartik1234@gmail.com](mailto:ktkartik1234@gmail.com)
