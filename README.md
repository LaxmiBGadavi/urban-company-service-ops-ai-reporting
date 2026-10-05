Urban Company Service-Ops Diagnostic & AI-Augmented Reporting Toolkit
Project Overview
This project analyzes Urban Company-style service operations data to identify trends in bookings, revenue, city performance, category performance, and SLA breaches.

The project connects four stages into one workflow:

Part A — Data Setup, Python Sanity Check & SQL Diagnostic
Part B — KPI Reporting in Excel
Part C — Tableau Public Dashboard & Stakeholder Storytelling
Part D — AI-Augmented Reporting & Complaint Escalation Specification
The objective is to ensure that the data and business metrics remain consistent across Python, SQL, Excel, Tableau, and AI-assisted reporting.

Project Workflow
Data Generation
      ↓
Data Validation & Cleaning
      ↓
SQL Analysis & Partner Deduplication
      ↓
City-Category Summary
      ↓
KPI Reporting in Excel
      ↓
Interactive Tableau Public Dashboard
      ↓
Stakeholder Storytelling
      ↓
AI-Assisted Reporting
      ↓
Complaint Escalation Rules

Key Results
- Total Bookings: 600
- Total Revenue: ₹1,047,973
- SLA Breaches: 79
- SLA Breach Rate: 13.2%
- Cities: 6
- Categories: 7

## Part A — Data Setup & SQL Diagnostic
Part A creates and validates the Urban Company service-operations database.
Main Activities
- Generated the SQLite database using Python.
- Created city, category, partner, and booking datasets.
- Performed partner deduplication.
- Identified zero-booking categories and partners.
- Performed SQL joins and diagnostic queries.
- Inserted and deleted booking records as required.
- Exported the reconciled city-category summary.
Main Output
city_category_summary.csv
This reconciled CSV is used as the fixed input for Parts B and C.

## Part B — KPI Reporting in Excel
The Excel workbook uses the reconciled city_category_summary.csv generated in Part A.
Workbook Includes
- City-Category Data
- Category Reference
- VLOOKUP price-band calculations
- Revenue Pivot Table
- KPI Summary
- City-level revenue validation
- SLA breach analysis
- Conditional formatting for highest and lowest revenue cities
Workbook
Part_B_KPI_Workbook.xlsx

## Part C — Tableau Public Dashboard
The Tableau dashboard uses the reconciled city_category_summary.csv as the primary data source.
Dashboard Includes
- Total Revenue KPI
- Total Bookings KPI
- SLA Breach Rate KPI
- Revenue by Category
- Revenue by City geographic map
- City → Category drill-down
- Month Focus parameter
- Cross-chart city filter
- Interactive dashboard view
The overall SLA Breach Rate is:
79 SLA Breaches / 600 Bookings = approximately 13.2%
Tableau Public Dashboard
View the Interactive Tableau Dashboard
Stakeholder Storytelling
DASHBOARD_STORY.md
This contains two stakeholder narratives:
1. City Operations Lead
2. Category Lead
Each narrative follows:
Headline → Evidence → Implication

## Part D — AI-Augmented Reporting
Part D contains written specifications for AI-assisted operational reporting and complaint pre-screening.
Prompt Pack
prompt_pack.md
Contains:
- Weekly Ops Summary Email prompt
- Stakeholder Narrative Draft prompt
- Complaint Triage prompt
- Critic-and-refine AI prompting pass
Escalation Agent Specification
escalation_agent_spec.md
Contains:
- Four ordered escalation rules
- Five guardrails
- Logging fields
- Hand-traced decisions for eight real bookings from the dataset

## Tableau Public Dashboard

https://public.tableau.com/app/profile/laxmi.g7878/viz/urbanserviceoperationsdashboard/Urbanserviceoperationsdashboard?publish=yes

