# 🛡️ AegisLife Insurance: Risk Analytics & Claims Intelligence

[![Python](https://img.shields.io/badge/Python-3.10%2B-blue.svg?logo=python&logoColor=white)](https://www.python.org/)
[![SQLite](https://img.shields.io/badge/SQLite-3.0%2B-003B57.svg?logo=sqlite&logoColor=white)](https://www.sqlite.org/)
[![Power BI](https://img.shields.io/badge/Power_BI-Desktop-F2C811.svg?logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)
[![Scipy](https://img.shields.io/badge/SciPy-Statistical_Testing-8CAAE6.svg?logo=scipy&logoColor=white)](https://scipy.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## 📌 Executive Overview
AegisLife is a mid-sized Indian life and health insurance provider experiencing **35% YoY policyholder expansion**. However, this rapid growth introduced severe operational bottlenecks, elevated loss ratios, and an alarming **49% claims fraud suspicion flag rate**.

This Capstone Project establishes an enterprise-grade **Risk Analytics & Claims Intelligence Pipeline**, combining:
1. **Relational Database Engineering**: Normalized SQL schemas and SQLite database ingestion.
2. **Advanced Data Quality Profiling**: Automated anomaly detection, typo standardization, and business rule validation.
3. **Statistical Hypothesis Testing**: Parametric and non-parametric testing of policyholder risk factors.
4. **Claims Turnaround & Fraud Analytics**: Feature engineering of agent fraud association ratios and processing speed tiers.
5. **Executive Decision Support**: Interactive Power BI dashboard, automated C-suite PowerPoint presentation, and formal strategic intelligence reporting.

---

## 🏗️ System Architecture & Entity-Relationship Model

```text
┌────────────────────────┐         ┌────────────────────────┐
│     CustomerMaster     │         │       AgentInfo        │
├────────────────────────┤         ├────────────────────────┤
│ PK  CustomerID         │         │ PK  AgentID            │
│     CustomerName       │         │     AgentName          │
│     Age, Gender        │         │     Region, Experience │
│     SmokerStatus       │         │     AgentTier          │
└───────────┬────────────┘         └───────────┬────────────┘
            │ 1                                │ 1
            │                                  │
            │ N                                │ N
┌───────────▼──────────────────────────────────▼────────────┐
│                       PolicyDetails                       │
├───────────────────────────────────────────────────────────┤
│ PK  PolicyID                                              │
│ FK  CustomerID                                            │
│ FK  AgentID                                               │
│     PolicyType (Term, Whole Life, Health, ULIP)           │
│     SumAssured, PremiumAmount, PolicyStartDate            │
│     RiskScore                                             │
└─────────────────────────────┬─────────────────────────────┘
                              │ 1
                              │
                              │ N
┌─────────────────────────────▼─────────────────────────────┐
│                       ClaimHistory                        │
├───────────────────────────────────────────────────────────┤
│ PK  ClaimID                                               │
│ FK  PolicyID                                              │
│     ClaimDate, SettlementDate                             │
│     ClaimAmount, ClaimStatus (Approved, Rejected, Pending)│
│     FraudFlag (Yes / No)                                  │
└───────────────────────────────────────────────────────────┘
```

---

## 📁 Repository Structure

```text
Capstone_project_insurance/
│
├── 📂 notebooks/
│   └── aegis_risk_analytics.ipynb          # End-to-end Python analytics & statistical pipeline
│
├── 📂 dashboard/
│   └── capstone_dashboard.pbix             # Enterprise Power BI Executive Dashboard
│
├── 📂 data/
│   ├── 📂 raw/                             # Raw multi-table Excel source files
│   │   ├── agentinfo.xlsx
│   │   ├── claimhistory.xlsx
│   │   ├── customerfeedback.xlsx
│   │   ├── customermaster.xlsx
│   │   └── policydetails.xlsx
│   └── 📂 processed/                       # Normalized SQLite Database & DDL scripts
│       ├── aegislife.db
│       ├── schema_setup.sql
│       └── mysql_schema_setup.sql
│
├── 📂 validation/
│   ├── AegisLife_cleaned_data.xlsx         # Cleaned, standardized master data
│   └── AegisLife_Data_Validation_Workbook_Final.xlsx
│
├── 📂 reports/
│   ├── AegisLife_Executive_Insights_Presentation.pptx  # C-suite executive briefing slide deck
│   ├── Final_Report.docx                   # Comprehensive Capstone Intelligence Report
│   └── eer diagram.png                     # Relational database entity-relationship diagram
│
├── 📂 docs/
│   └── 4414678-Project_3_Capstone_Problem_Statement_-_Risk_Analytics_and_Claims_Intelligence.pdf
│
└── 📄 README.md                            # Comprehensive project documentation
```

---

## 🔬 Statistical Hypothesis Testing & Key Insights

| Hypothesis Test | Variables Investigated | Statistical Method | Empirical Result | Business Implication |
| :--- | :--- | :--- | :--- | :--- |
| **Smoking vs Claim Severity** | Smoker Status vs Claim Amount | Two-Sample $t$-Test / Welch's $t$ | $p = 0.082$ (Borderline observational trend) | Smokers file marginally higher claims, but lifestyle factors interact with age. Recalibrate underwriting surcharges. |
| **Regional Claim Disparities** | Geographic Zone vs Claim Payout | One-Way ANOVA ($F$-Test) | $p > 0.05$ (No significant variance) | Claim severity is uniformly distributed nationally; standardize national baseline reserves. |
| **Risk Score Validity** | Underwriting Risk Score vs Actual Claim $ | Pearson Correlation ($r$) | $r pprox 0.012$ ($p = 0.64$) | **Critical Model Failure**: Current risk score fails to predict financial exposure. Urgent underwriting model overhaul needed. |
| **Agent Fraud Association** | Agent Tier vs Claim Fraud Flag | Chi-Square Test ($\chi^2$) | $\chi^2 = 38.42, p < 0.001$ | Statistically significant clustering of fraudulent claims among specific low-tier intermediary agencies. |

---

## 📊 Executive Power BI Dashboard Highlights
The interactive Power BI solution (`dashboard/capstone_dashboard.pbix`) provides:
* **Claims Overview KPI Cards**: Total Claim Exposure, Approval Rate, Rejection Rate, Average Processing Days.
* **Fraud Investigation Heatmap**: High-risk agent hubs, outlier policies with claim filing within 90 days of issuance.
* **Financial Loss Ratio Decomposition**: Claim payouts vs Premium collected by Policy Type (Term vs Health vs ULIP).
* **Operational SLA Monitoring**: Claims processing cycle time breakdown by operational department.

---

## 💡 Strategic Recommendations

1. **Underwriting Model Modernization**:
   - Decommission legacy Risk Score model; deploy machine-learning-based risk scoring incorporating multi-dimensional health, credit, and lifestyle data.
2. **Intermediary Audit & Governance**:
   - Establish automated anomaly alerts for agents with Fraud Association Ratios exceeding 2 standard deviations above the regional mean.
3. **Claims Turnaround Optimization (STP)**:
   - Implement Straight-Through Processing (STP) for low-value, verified claims (< ₹50,000) to compress average turnaround time from 24 days to under 5 days.

---

## 🚀 Execution & Setup Guide

### 1. Database Initialization
```bash
# SQLite ingestion
sqlite3 data/processed/aegislife.db < data/processed/schema_setup.sql
```

### 2. Python Analytical Pipeline
```bash
pip install pandas numpy scipy matplotlib seaborn openpyxl sqlalchemy
jupyter notebook notebooks/aegis_risk_analytics.ipynb
```

### 3. Power BI Dashboard
Open `dashboard/capstone_dashboard.pbix` in **Power BI Desktop** to explore dynamic slicers, DAX measures, and interactive visual drill-downs.

---

## 👤 Author & Contact
* **Kartik Tripathi**
* **LinkedIn**: [linkedin.com/in/kartik-tripathi-725697383](https://www.linkedin.com/in/kartik-tripathi-725697383)
* **GitHub**: [github.com/ktkartik1234-lgtm](https://github.com/ktkartik1234-lgtm)
* **Email**: [ktkartik1234@gmail.com](mailto:ktkartik1234@gmail.com)
