# 🧪 Customer Behavioral Modeling & Statistical Hypothesis Testing

[![Statistics](https://img.shields.io/badge/Statistics-Hypothesis_Testing-blue.svg)](https://en.wikipedia.org/wiki/Statistical_hypothesis_testing)
[![SciPy](https://img.shields.io/badge/SciPy-Inferential_Stats-8CAAE6.svg?logo=scipy&logoColor=white)](https://scipy.org/)
[![HTML5](https://img.shields.io/badge/Report-Interactive_HTML-E34F26.svg?logo=html5&logoColor=white)](https://developer.mozilla.org/en-US/docs/Web/HTML)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## 📌 Executive Overview
Data-driven decision making requires establishing whether observed business patterns reflect genuine population effects or mere sampling variation. This project conducts rigorous **Inferential Statistical Analysis & Hypothesis Testing** on customer demographic and transactional behavior.

The complete statistical report is compiled in an interactive deliverable:
👉 [`stat_project.html`](stat_project.html)

---

## 📁 Repository Structure

```text
stat_project/
│
├── 🌐 stat_project.html                       # Complete Interactive HTML Statistical Report
└── 📄 README.md                              # Detailed project documentation
```

---

## 📊 Summary of Baseline Descriptive Statistics

| Variable | Mean | Median | Standard Deviation | Distribution Profile |
| :--- | :---: | :---: | :---: | :--- |
| **Customer Age** | 49.47 years | 49.00 years | 18.22 years | Uniformly distributed across working-age demographics |
| **Monthly Spend ($)** | $331.61 | $282.11 | $225.80 | Right-skewed with high-spending premium outlier cohort |
| **Days Since Last Interaction** | 538.47 days | 445.00 days | 398.77 days | Broad engagement recency spectrum |

* **Modal Customer Demographics**: Gender: *Male*, Education: *Master's Degree*, Marital Status: *Unmarried*.

---

## 🔬 Statistical Hypothesis Testing Matrix

```text
                          ┌───────────────────────────┐
                          │   Statistical Analyses    │
                          └─────────────┬─────────────┘
                                        │
      ┌──────────────────┬──────────────┴───────────────┬──────────────────┐
      │                  │                              │                  │
┌─────▼────────┐  ┌──────▼───────┐             ┌────────▼───────┐  ┌───────▼───────┐
│ Two-Sample   │  │ One-Way      │             │ Pearson        │  │ Chi-Square    │
│ t-Test       │  │ ANOVA        │             │ Correlation    │  │ Independence  │
│ (Gender vs   │  │ (State vs    │             │ (Age vs        │  │ (Marital vs   │
│  Spending)   │  │  Spending)   │             │  Activity)     │  │  Lifestyle)   │
└──────────────┘  └──────────────┘             └────────────────┘  └───────────────┘
```

### 1. Gender vs Monthly Spending (Independent Two-Sample $t$-Test)
* **Null Hypothesis ($H_0$)**: $\mu_{\text{Male}} = \mu_{\text{Female}} = \mu_{\text{Non-Binary}}$ (No difference in average spend across genders).
* **Alternative Hypothesis ($H_1$)**: Significant difference in spending exists between gender cohorts.
* **Test Outcome**: $p > 0.05$ (Fail to reject $H_0$).
* **Strategic Takeaway**: Customer spending capacity does not vary by gender. Marketing offers and product pricing structures should remain **gender-neutral**, avoiding costly segmentation overhead.

### 2. Education Level vs Spending (One-Way ANOVA)
* **Null Hypothesis ($H_0$)**: Customer spending is invariant across education tiers (High School, Bachelor, Master, PhD).
* **Alternative Hypothesis ($H_1$)**: At least one education level exhibits statistically distinct spending behavior.
* **Test Outcome**: $p > 0.05$ (Fail to reject $H_0$).
* **Strategic Takeaway**: Product appeal is **education-agnostic**. Marketing copy should emphasize functional product value rather than prestige messaging.

### 3. Customer Age vs Activity Recency (Pearson Correlation)
* **Null Hypothesis ($H_0$)**: $r = 0$ (No correlation between customer age and days since last interaction).
* **Alternative Hypothesis ($H_1$)**: $r \neq 0$.
* **Test Outcome**: $r \approx -0.008, p > 0.05$ (Fail to reject $H_0$).
* **Strategic Takeaway**: Older customers maintain equal digital interaction rates compared to younger demographics. Loyalty and digital apps should be designed inclusively for all age brackets.

### 4. Geographic State vs Spending (One-Way ANOVA)
* **Null Hypothesis ($H_0$)**: Average spending is identical across geographic states (Florida, Texas, New York, California).
* **Test Outcome**: $p > 0.05$ (Fail to reject $H_0$).
* **Strategic Takeaway**: Spending power is geographically uniform. Prioritize **centralized national advertising campaigns** over fragmented regional variants.

### 5. Marital Status vs Lifestyle / Pet Ownership (Chi-Square Test of Independence)
* **Null Hypothesis ($H_0$)**: Marital status and pet ownership/lifestyle preferences are independent.
* **Test Outcome**: $\chi^2$ statistic significant at $p < 0.01$ (Reject $H_0$).
* **Strategic Takeaway**: Marital status is a strong statistical predictor of household pet ownership. Allocate lifestyle product marketing based on marital status indicators.

---

## 🚀 How to View the Interactive Report
Simply open `stat_project.html` in any web browser (Chrome, Edge, Firefox, Safari) to view full charts, bivariate cross-tabulation tables, and interactive statistical summaries.

---

## 👤 Author & Contact
* **Kartik Tripathi**
* **LinkedIn**: [linkedin.com/in/kartik-tripathi-725697383](https://www.linkedin.com/in/kartik-tripathi-725697383)
* **GitHub**: [github.com/ktkartik1234-lgtm](https://github.com/ktkartik1234-lgtm)
* **Email**: [ktkartik1234@gmail.com](mailto:ktkartik1234@gmail.com)
