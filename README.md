# ML Pipeline for Cybersecurity Pattern Detection

## Project Overview
This project implements a complete machine learning pipeline for detecting anomalous patterns in cybersecurity data using the NSL-KDD dataset.

## Technologies Used
- **Snowflake** - Data warehouse
- **dbt** - Data transformations
- **Databricks** - ML platform
- **MLflow** - Experiment tracking
- **Slack** - Automated reporting
- **GitHub** - Version control

## Architecture
Snowflake (Data) → dbt (Transform) → Databricks (ML) → MLflow (Log) → Slack (Report)

## Model Performance
- **Accuracy**: 99.85%
- **Precision**: 99.86%
- **Recall**: 99.76%

## Project Structure
├── notebooks/
│   └── ml_pipeline.ipynb
├── dbt/
│   ├── sources.yml
│   ├── stg_raw_logs.sql
│   └── fct_features.sql
├── data/
│   └── KDDTrain_filtered.csv
├── models/
│   └── random_forest_model.pkl
├── screenshots/
│   ├── slack_message.png
│   └── dashboard.png
├── README.md
└── .gitignore

## Author
Harry-134