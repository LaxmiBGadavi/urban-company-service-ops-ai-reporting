# urban-company-service-ops-ai-reporting

# Urban Company Service-Ops Diagnostic & AI-Augmented Reporting Toolkit

## Project Overview

This project is an end-to-end **Service Operations Analytics and AI-Augmented Reporting Toolkit** for an Urban Company-style home-services marketplace.

The project starts from a deterministic, seeded service-booking dataset and takes the data through:

1. Python data generation and sanity checking
2. SQLite database creation and SQL diagnostics
3. Data cleaning and reconciliation
4. City-category KPI aggregation
5. Spreadsheet-based KPI validation
6. Tableau Public dashboard creation
7. Stakeholder-focused dashboard storytelling
8. AI-assisted operational reporting
9. Rule-based customer complaint escalation specification

The objective is to create a single connected diagnostic where the numbers produced by **SQL, Excel, and Tableau agree to the rupee**.

---

# Project Objectives

- Generate a realistic Urban Company-style service operations dataset.
- Build and validate a SQLite database.
- Perform data-quality and duplicate-record analysis.
- Identify zero-booking categories and partners.
- Perform SQL INSERT and DELETE operations.
- Create a reconciled city-category summary.
- Validate SQL results using Excel/Google Sheets formulas.
- Build operational KPIs and revenue analysis.
- Create an interactive Tableau Public dashboard.
- Provide stakeholder-specific operational narratives.
- Create reusable AI prompts for weekly reporting.
- Design a rule-based AI-assisted complaint escalation workflow.
- Maintain all project artifacts in one public GitHub repository.

---

# Project Workflow

```text
Seeded Dataset
      ↓
Python Data Generation
      ↓
SQLite Database
      ↓
Python Sanity Check
      ↓
SQL Data Quality & Diagnostics
      ↓
INSERT / DELETE Reconciliation
      ↓
city_category_summary.csv
      ↓
 ┌───────────────┬─────────────────┐
 ↓               ↓                 ↓
Excel KPI       Tableau           AI Reporting
Workbook        Dashboard         & Escalation
 ↓               ↓                 ↓
 └───────────────┴─────────────────┘
                ↓
        Final GitHub Repository
