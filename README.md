# OmniChannel Marketing Campaign Performance & Revenue Attribution Analysis

## 📊 Business Scenario
An enterprise operating across multiple sub-brands (including TechCorp, Alpha Innovations, and DataTech Solutions) deployed a multi-channel marketing spend of **₹730,163,738** across 58,365 individual campaigns. Despite massive capital outlays across 6 strategic communication channels (YouTube, Website, Instagram, Email, Facebook, Google Ads), leadership faced severe visual blindspots regarding channel efficiency, fluctuating customer conversion rates, and erratic ROI generation. 

The primary business objective was to audit the overall portfolio performance, establish definitive channel performance baselines, eliminate capital bleed, and build an automated framework for real-time strategic budget relocation.

## ⚠️ Data Challenges & Engineering Roadblocks
* **The Messy Raw Data:** The initial dataset contained raw telemetry files and logs with unformatted datatypes, mixed string representations, and mismatched structural naming conventions across channels.
* **Pre-Processing Execution:** Primary cleaning, structural formatting, and missing value constraints were engineered inside Excel to ensure foundational data health.
* **Data Pipelines & Type Safety:** A dedicated Python cleaning pipeline (`csv_cleaner.py`) was engineered to programmatically enforce rigid type safety, transform data arrays, explicitly format float representations for financial metrics (`roi`, `acquisition_cost`, `conversion_rate`), and structure clean outputs for continuous injection.
* **Relational Schema Overhead:** Standard flat-file architectures severely bogged down visualization rendering engines. To resolve performance latencies, the analytical tier was redesigned into a high-performance **Star Schema Data Model** inside Power BI, mapping granular campaign metrics directly into optimized Dimension tables structured around unified keys.

## 🛠️ Technical Implementation Stack
* **Data Processing:** Microsoft Excel (Initial Cleansing, Structural Profiling), Python / Pandas (Datatype Constraints, Pipeline Automation).
* **Analytical Modeling:** Star Schema Framework (Fact & Dimension Structural Integration).
* **Data Querying & KPI Extraction:** MySQL Server (Advanced Aggregations, Grouping, Ranking Windows).
* **Business Intelligence Dashboarding:** Microsoft Power BI (DAX Formulas, Cross-Filtering UI, Dynamic Executive Report Layers).

## 📈 Executive Key Performance Indicators (KPIs) Extracted via SQL
Using enterprise-grade analytical SQL queries (`KPIs_Extraction.sql`), the following structural insights were uncovered:
1. **Portfolio Baseline:** Checked 58,365 total active campaigns generating over 321M impressions, 31.9M direct clicks, an average conversion rate of 8.02%, and a global benchmark ROI of 5.01x.
2. **Channel Performance Discrepancies:** Google Ads outpaced traditional pipelines with a peak conversion rate of 8.09% and a 5.02x ROI, while Instagram demonstrated the lowest portfolio efficiency with an ROI of 4.98x.
3. **Engagement to CTR Ratios:** YouTube and Website channels led active web engagement with identical 10.04% Click-Through Rates (CTR), identifying a deep correlation between high-affinity rich media and immediate consumer responses.

## 💡 Strategic Business Suggestions & Final Impacts
* **Capital Relocation:** Transition low-performing capital layers (such as NexGen Systems' underperforming 4.97x ROI tiers) and re-inject those financial reserves into high-performing Google Ads and optimized Search engine portfolios.
* **Channel Mix Modification:** Standardize digital spend formats to emulate the 10.04% CTR baselines achieved via YouTube and specialized Website funnels to increase the overall portfolio conversion floor from 8.02% to a targeted 9.5%.
* **Financial Impact:** Operationalizing this data infrastructure removes up to an estimated ₹14,000,000 in redundant channel overlaps, yielding a predictable 4% expansion in active enterprise customer attribution loops without scaling absolute marketing budgets.
