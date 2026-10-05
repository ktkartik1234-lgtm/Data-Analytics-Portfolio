# Kartik Tripathi — Data Analytics Portfolio

[LinkedIn](https://www.linkedin.com/in/kartik-tripathi-725697383) • [GitHub](https://github.com/ktkartik1234-lgtm) • [Portfolio Website](https://datascienceportfol.io/ktkartik1234) • [Email](mailto:ktkartik1234@gmail.com)

---

## About Me
I am a Data Analyst with a quantitative background in **Physics, Chemistry, and Mathematics (B.Sc., Kumaun University)** and formal certifications in **Data Analytics with GenAI** and **Market Research**. 

My core focus is taking complex, multi-table datasets and translating them into reliable data models, SQL queries, statistical tests, and clear visual dashboards. I have practical experience with **SQL (DuckDB, MySQL, SQLite), Python (Pandas, Polars, SciPy), Power BI, Tableau, and Advanced Excel**.

---

## Technical Skills

| Category | Tools & Technologies |
| :--- | :--- |
| **SQL & Databases** | DuckDB, MySQL, SQLite, PostgreSQL, Relational Schema Design (3NF), CTEs, Window Functions (`LAG`, `LEAD`, `ROW_NUMBER`, `DENSE_RANK`), Multi-Table Joins |
| **Data Transformation & Modeling** | dbt Core (Staging, Intermediate, Marts, Schema Tests), Star Schema, Dimensional Modeling, Apache Parquet |
| **Python** | Python (Pandas, Polars, NumPy, SciPy, Matplotlib, Seaborn), Jupyter Notebooks, Automated Data Pipelines |
| **Business Intelligence** | Microsoft Power BI (DAX, Power Query ETL, Data Modeling), Tableau Desktop (Calculated Fields, LOD Expressions, Geographic Mapping) |
| **Spreadsheets** | Microsoft Excel (Pivot Tables, Dynamic Slicers, XLOOKUP, Index/Match, Nested Logic, Variance Tracking) |
| **Applied Statistics** | Hypothesis Testing (Two-Sample t-Tests, Mann-Whitney U, Chi-Square Independence, ANOVA), RFM Segmentation, Pareto (80/20) Analysis |

---

## Portfolio Projects

| Project | Domain | Stack | Key Highlights |
| :--- | :--- | :--- | :--- |
| **[DarkFleet-IQ](https://github.com/ktkartik1234-lgtm/DarkFleet-IQ)** | Maritime Telemetry & Sanctions | DuckDB, dbt Core, Python, Streamlit | Analyzed 112k+ AIS pings; detected transponder blackouts via bidirectional SQL windowing; confirmed draft changes using Welch's t-test (p < 0.001); interactive Streamlit UI. |
| **[Retail E-Commerce Database](sql/README.md)** | E-Commerce Relational DB | MySQL, 3NF Schema, Window Functions | Designed a 6-table normalized schema with integrity constraints; wrote multi-level SQL analytical queries for revenue, AOV, and SKU velocity. |
| **[AegisLife Insurance Risk Analytics](Capstone_project_insurance/README.md)** | Insurance & Claims Analytics | Python, SQLite, SciPy, Power BI | Cleansed and structured 2M+ records into SQLite; tested claims payout distributions and agent anomalies using SciPy; built an interactive Power BI dashboard. |
| **[Customer Lifetime Value & RFM Analysis](python_project/README.md)** | Customer Analytics | Python (Pandas, Seaborn), Jupyter | Segmented 1,000 customers across 23,050 transactions into 8 behavioral cohorts using quintile RFM scoring; visualized revenue concentration with dual-axis Pareto charts. |
| **[Commercial Airline Operations BI](power_bi_projects/README.md)** | Aviation & Operations | Power BI (DAX), Power Query | Modeled 187 commercial flight records; built custom DAX metrics for route operating margins and calculated profit sensitivities to ground delays > 25 mins. |
| **[Real Estate Market Valuation](tableau_project/README.md)** | Real Estate Analytics | Tableau Desktop, LOD Expressions | Analyzed 12-year transaction cycles (380k records); evaluated Sales-to-Assessment ratios and municipal price trends across regional markets. |
| **[Amazon Sales Target Variance Model](excel_project/README.md)** | Sales & Quota Tracking | Advanced Excel (Pivots, Slicers, XLOOKUP) | Connected 4 relational tables (1,000 orders, products, quotas) to automate monthly target tracking and fulfillment variance reporting. |
| **[Consumer Behavior Statistical Testing](stat_project/README.md)** | Inferential Statistics | Python (SciPy), Hypothesis Testing | Ran two-sample t-tests, ANOVA, and Chi-Square tests on consumer data to evaluate demographic drivers of spend recency and volume. |

---

## Featured Project Walkthroughs

### 1. [DarkFleet-IQ: Maritime AIS Telemetry & Sanctions Forensics](https://github.com/ktkartik1234-lgtm/DarkFleet-IQ)
* **Goal**: Build a data pipeline to identify potential AIS transponder manipulation (*going dark*) and clandestine mid-sea cargo discharge across high-risk choke points (Strait of Hormuz, Malacca Strait, Black Sea).
* **Pipeline**:
  1. Ingested 112,000+ raw AIS satellite telemetry records and vessel registries into Snappy-compressed Parquet and DuckDB.
  2. Built a 3-tier dbt Core pipeline (staging, intermediate, marts) with 43 data quality tests.
  3. Used SQL window functions (`LAG()`, `LEAD()`) and Haversine distance formulas to detect transponder blackouts exceeding 12 hours.
  4. Applied Welch's t-test in SciPy to confirm statistically significant draft decreases during blackouts ($p < 10^{-37}$), indicating mid-sea cargo transfer.
  5. Built an interactive Streamlit dashboard for filtering vessels, reviewing blackout tracks, and querying the database directly.

### 2. [Retail E-Commerce Relational Database & SQL Analytics](sql/README.md)
* **Goal**: Architect a production-ready relational database in Third Normal Form (3NF) and write practical business queries.
* **Implementation**:
  * Designed tables for `customers`, `products`, `orders`, `order_items`, `payments`, and `product_reviews` with foreign key cascades and indexes.
  * Authored a progressive analytical query suite: customer repeat purchase rates, running totals, average order value by category, SKU return rates, and payment reconciliation.

### 3. [AegisLife Insurance Claims & Risk Analytics](Capstone_project_insurance/README.md)
* **Goal**: Analyze insurance policy, claims, and underwriting data to evaluate underwriting score validity and investigate high claim suspicion rates.
* **Implementation**:
  * Cleaned 2M+ records using Python and loaded them into SQLite.
  * Ran correlation tests and discovered weak predictive correlation between legacy risk scores and actual payout amounts ($r = 0.012, p = 0.64$).
  * Isolated cluster patterns among specific intermediary agents associated with early claims (< 90 days).
  * Built an operational claims summary dashboard in Power BI.

### 4. [Customer Lifetime Value & RFM Segmentation](python_project/README.md)
* **Goal**: Identify high-value and at-risk customer segments from transactional e-commerce data.
* **Implementation**:
  * Processed 23,050 transactions using Pandas, calculating Recency, Frequency, and Monetary metrics per customer.
  * Applied `pd.qcut` quintile scoring to segment users into 8 cohorts (Champions, Loyal Customers, At Risk, Hibernating, etc.).
  * Discovered that the top 31.8% of customers drove 38.4% of total revenue ($8.85M), providing clear targeting guidance for retention campaigns.

---

## Education & Certifications

* **Bachelor of Science (B.Sc.) in Physics, Chemistry, and Mathematics** — Kumaun University, Nainital, Uttarakhand (2020)
* **Data Analytics with GenAI (Master Certificate)** — Career 247 (SIN: C2473293)
* **Certificate Course in Market Research (60 Hours)** — Reliance Foundation Skilling Academy & Skill India Digital Hub (Dec 2025)
* **AI Applications with Python and Flask (PY0222EN)** — IBM SkillsNetwork & Career 247
* **Generative AI Skills for Business Intelligence (AI0279EN)** — IBM SkillsNetwork & Career 247
* **Generative AI Essentials (AI0121EN)** — IBM SkillsNetwork & Career 247

---

## Contact
* **Location:** Nainital, Uttarakhand, India (Open to relocation / remote)
* **Email:** [ktkartik1234@gmail.com](mailto:ktkartik1234@gmail.com)
* **Phone:** [+91 70172 69349](tel:+917017269349)
* **LinkedIn:** [linkedin.com/in/kartik-tripathi-725697383](https://www.linkedin.com/in/kartik-tripathi-725697383)
* **GitHub:** [github.com/ktkartik1234-lgtm](https://github.com/ktkartik1234-lgtm)
