# Intel-Device-Repurposing-Analysis
Intel was the world's third-largest semiconductor chip manufacturer by revenue in 2024 and has been included in the Fortune 500 list of the largest United States


Overview:
An environmental impact analysis evaluating Intel’s device-repurposing program using SQL. The project focuses on quantifying energy savings, CO₂ emissions avoided, and regional sustainability performance across repurposed laptops and desktops.

By engineering device-age features, segmenting lifecycle buckets, and evaluating contribution distributions, this analysis provides strategic insights for Intel’s Sustainability, Corporate Responsibility, and Lifecycle Operations teams.

🔑 Key Insights & Business Impact

Lifecycle Optimization: Mid-age devices (4–6 years old) deliver the strongest balance of performance and environmental benefit, suggesting they are the highest-ROI group for repurposing initiatives.

Device Type Contribution: Laptops show stronger energy savings per unit, while desktops deliver disproportionately higher CO₂ reduction due to their higher baseline energy draw.

Regional Efficiency Gaps: Certain regions contribute significantly more to global sustainability impact, indicating areas where Intel could scale local collection, refurbishment, and recycling programs.

Program-Level ROI: Aggregate analysis shows that repurposing tens of thousands of devices yields meaningful environmental returns—supporting Intel’s long-term sustainability commitments.

🛠️ Technical Stack & Project Components

Methodology: SQL-based lifecycle modeling, feature engineering (device_age, device_age_bucket), CTE pipelines, KPI generation (kWh saved, CO₂ avoided), and regional contribution analysis.

Tools:
• SQL (joins, aggregates, CASE logic, window-ready partitioning)
• PDF analysis & interpretation (Intel milestone report)

Data: Two related Intel datasets:

device_data — device type, model year, and hardware attributes

impact_data — energy savings, CO₂ reductions, and region indicators

File / Folder	Description
SQL/	Full suite of SQL scripts for joins, segmentation, impact modeling, and region-level contribution calculations.
analysis/Intel_Sustainability_Impact_Report.pdf	Complete milestone report with KPIs, charts, and narrative business interpretations.
README.md	Project overview, insights, and documentation for running the analysis.
📈 Core Analytical Components
Device Lifecycle Modeling

Computes hardware aging (device_age) and classifies devices into sustainability buckets: Newer, Mid-Age, Older.

Environmental KPI Summaries

Quantifies total CO₂ reduction (in tons), annual kWh savings, and average efficiency per device.

Device-Type Performance

Compares environmental ROI between laptop and desktop repurposing pathways.

Regional Contribution Analysis

Determines each region’s percentage contribution to global energy savings and emissions reduction—clarifying where expansion efforts deliver the strongest returns.

📄 Full Sustainability Report (PDF)

See the full milestone analysis, charts, and written answers here:
👉 analysis/Intel_Sustainability_Impact_Report.pdf

This includes:
✔ CO₂ reduction visualizations
✔ KPI tables
✔ Lifecycle insights
✔ SQL output screenshots
✔ Business recommendations

▶️ How to Run Locally (Optional)

If you extend this project into a Python + SQL hybrid, a local workflow might look like:

Clone the Repository

git clone https://github.com/your-username/intel-sustainability-analysis.git
cd intel-sustainability-analysis


Review SQL Logic
Inside the SQL/ folder, review or copy the queries to your SQL engine (BigQuery, PostgreSQL, DuckDB, etc.).

Open the PDF Report
Navigate to the analysis/ folder to view the complete Intel milestone deliverable.
