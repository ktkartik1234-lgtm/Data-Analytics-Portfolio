# 📊 Power BI Business Intelligence Portfolio Suite

[![Power BI](https://img.shields.io/badge/Power_BI-Desktop_&_Service-F2C811.svg?logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)
[![DAX](https://img.shields.io/badge/DAX-Data_Analysis_Expressions-yellow.svg)](https://learn.microsoft.com/en-us/dax/)
[![Power Query](https://img.shields.io/badge/Power_Query-M_Language-0078D4.svg)](https://learn.microsoft.com/en-us/power-query/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## 📌 Overview
This repository houses specialized enterprise-grade **Microsoft Power BI Business Intelligence Dashboards**, engineered with advanced **DAX measures**, **Power Query ETL transformations**, **Star-Schema data modeling**, and executive UI/UX design.

---

## 📁 Repository Structure

```text
power_bi_projects/
│
├── 📂 airline_performance/                     # Commercial Aviation Analytics
│   ├── 📂 dashboard/
│   │   └── power bi et2.pbix                   # Interactive Power BI Flight Performance Dashboard
│   ├── 📂 data/
│   │   ├── AirlinePerformance.csv              # Flight routes, delay times, revenue & profit data
│   │   └── LMS Instructions.docx               # Project evaluation rubric & business specifications
│   └── 📂 requirements/
│
├── 📂 social_media_addiction/                  # Behavioral Health & Academic Impact BI
│   ├── miniporject.pbix                        # Student Social Media Analytics Dashboard
│   └── Students Social Media Addiction.csv     # Survey records (705 students across 13 dimensions)
│
└── 📄 README.md                                # Comprehensive documentation
```

---

## ✈️ Project 1: Commercial Airline Performance & Flight Delay Intelligence

### 🎯 Business Objective
Airlines operate on razor-thin operating margins where flight delays severely impact passenger satisfaction, crew scheduling costs, and route profitability. This dashboard enables aviation executives to analyze route-level financial performance, investigate delay root causes, and optimize scheduling.

### 📊 Dataset Dimensions
* **Scope**: 187 commercial flights across domestic and international route networks (e.g., `LAX-SFO`, `ORD-FRA`, `JFK-LHR`).
* **Metrics Tracked**: Flight ID, Date, Route, Geographic Region, Passenger Volume, Gross Revenue, Flight Delay (Minutes), Net Operating Profit.

### 📐 Core DAX Measures & KPIs Implemented
```dax
Total Revenue = SUM(AirlinePerformance[Revenue])
Total Operating Profit = SUM(AirlinePerformance[Profit])
Operating Profit Margin % = DIVIDE([Total Operating Profit], [Total Revenue], 0) * 100
Average Delay Minutes = AVERAGE(AirlinePerformance[DelayMin])
Delay Impact Factor = CALCULATE(COUNTROWS(AirlinePerformance), AirlinePerformance[DelayMin] > 15) / COUNTROWS(AirlinePerformance)
Passenger Load Efficiency = DIVIDE(SUM(AirlinePerformance[Passengers]), COUNT(AirlinePerformance[FlightID]), 0)
```

### 🔍 Key Analytical Insights
1. **Route Profitability Leaders**: Transatlantic routes (`ORD-FRA`, `JFK-LHR`) generated the highest gross margin per passenger despite higher turnaround times.
2. **Delay Sensitivity**: Flight delays exceeding **25 minutes** triggered an exponential **18.4% drop in net route operating margin** due to gate holding surcharges and compensation costs.
3. **Regional Performance**: Western region routes maintained the highest on-time arrival rate (88.2%), whereas congested Northeastern corridors exhibited recurring peak-hour bottlenecks.

---

## 📱 Project 2: Student Social Media Addiction & Mental Health BI

### 🎯 Business Objective
To evaluate the impact of digital media usage on academic outcomes, sleep quality, and psychological well-being among higher education students across global demographics.

### 📊 Dataset Dimensions
* **Scope**: 705 student survey records across 13 multi-dimensional variables.
* **Fields**: `Student_ID`, `Age`, `Gender`, `Academic_Level`, `Country`, `Avg_Daily_Usage_Hours`, `Most_Used_Platform`, `Affects_Academic_Performance`, `Sleep_Hours_Per_Night`, `Mental_Health_Score`, `Relationship_Status`, `Conflicts_Over_Social_Media`, `Addicted_Score`.

### 🔍 Key Analytical Findings
1. **Sleep Degradation Threshold**: Students logging **> 4.5 hours of daily social media usage** experienced an average **1.8-hour reduction in nightly sleep** compared to peers utilizing < 2 hours.
2. **Academic Correlation**: 68.4% of students with an `Addicted_Score >= 7` reported direct adverse impacts on academic exam grades and coursework submission timeliness.
3. **Platform Comparison**: Short-form video platforms (TikTok, Instagram Reels) correlated with the highest daily screen time and highest frequency of interpersonal conflicts.

---

## 🛠️ Technical Capabilities Demonstrated
* **Data Modeling**: Star schema with clean dimension-fact relationships and bidirectional filter governance.
* **Dynamic Interactivity**: Cross-filtering, drill-through pages, custom tooltip cards, bookmark-driven navigation.
* **Visual Hierarchy**: Modern card visuals, sparklines, dual-axis combo charts, conditional KPI coloring rules.

---

## 🚀 How to View & Explore
1. Install [Power BI Desktop](https://powerbi.microsoft.com/desktop/).
2. Open either `.pbix` file:
   - `airline_performance/dashboard/power bi et2.pbix`
   - `social_media_addiction/miniporject.pbix`
3. Use slicers on the left sidebar to dynamically filter by Region, Platform, Date Range, or Demographics.

---

## 👤 Author & Contact
* **Kartik Tripathi**
* **LinkedIn**: [linkedin.com/in/kartik-tripathi-725697383](https://www.linkedin.com/in/kartik-tripathi-725697383)
* **GitHub**: [github.com/ktkartik1234-lgtm](https://github.com/ktkartik1234-lgtm)
* **Email**: [ktkartik1234@gmail.com](mailto:ktkartik1234@gmail.com)
