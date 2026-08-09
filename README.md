# ML Pipeline for Cybersecurity Pattern Detection

## Project Overview
This project implements a complete machine learning pipeline for detecting anomalous patterns in cybersecurity data using the NSL-KDD dataset. The pipeline includes data loading, transformation, model training, and automated reporting using modern data tools.

## Technologies Used
- **Snowflake** - Cloud data warehouse for storing raw data
- **dbt** - Data transformation and modelling
- **Databricks** - ML platform for model training
- **MLflow** - Experiment tracking
- **Slack** - Automated reporting and alerts
- **GitHub** - Version control

## Architecture
Snowflake (Raw Data) -> dbt (Transform) -> Databricks (ML) -> Slack (Report)


## Model Performance

### Random Forest Classifier

| Metric | Value |
|--------|-------|
| Accuracy | 0.9985 |
| Precision | 0.9986 |
| Recall | 0.9976 |
| F1-score | 0.9981 |

### Confusion Matrix

| | Predicted Normal | Predicted Attack |
|---|---|---|
| Actual Normal | 14,934 | 13 |
| Actual Attack | 22 | 9,005 |

## Project Structure

```text
MLPipeline_Cybersakerhet_2026/
├── notebooks/
│   ├── ml_pipeline_original.ipynb
│   └── ml_pipeline_snowflake.ipynb
├── dbt/
│   ├── sources.yml
│   ├── stg_raw_logs.sql
│   └── fct_features.sql
├── models/
│   └── random_forest_model.pkl
├── screenshots/
│   ├── slack_message.png
│   └── model_performance.png
├── dbt_project.yml
├── README.md
└── .gitignore
````
Setup Instructions
1. Snowflake Setup
Create a Snowflake trial account

Create database: MLPIPELINE

Create schema: RAW_DATA

Upload NSL-KDD data as TRAINDATA and TESTDATA

2. dbt Setup
Create dbt Cloud account

Connect to Snowflake

Configure dbt_project.yml

Run dbt run to build models

3. Databricks Setup
Create Databricks Community Edition account

Import notebooks from /notebooks

Configure Snowflake connection in notebook

Run cells in order (1-5)

4. Slack Integration
Create Slack app with Incoming Webhook

Add webhook URL to notebook

Run to receive automated reports

Results
The Random Forest model achieves 99.85% accuracy on the test set with minimal false positives, making it suitable for real-world cybersecurity anomaly detection.

Key Findings
True Negatives: 14,934 (normal traffic correctly identified)

False Positives: 13 (false alarms)

False Negatives: 22 (missed attacks)

True Positives: 9,005 (attacks correctly identified)

Security Considerations
All credentials stored in Databricks Secrets (not in code)

.gitignore prevents accidental exposure of sensitive data

No hardcoded passwords or API keys in notebooks

Author
Harry-134

License
MIT
