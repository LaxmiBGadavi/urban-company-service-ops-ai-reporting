# Part C — Tableau Public Dashboard

## Urban Company Service Operations Dashboard

This Tableau dashboard provides an interactive view of Urban Company service-operations performance using the reconciled city-category summary data.

The dashboard focuses on:

- Total Revenue
- Total Bookings
- SLA Breach Rate
- Revenue by Category
- Revenue by City
- City → Category Drilldown
- Month Focus
- City Filter

---

## Dashboard KPIs

| KPI | Value |
|---|---:|
| Total Revenue | ₹1,047,973 |
| Total Bookings | 600 |
| SLA Breach Rate | 13.2% |

SLA Breach Rate is calculated as:

```text
SUM(sla_breaches) / SUM(bookings_count)

Dashboard Views
1. Revenue by Category
Shows revenue performance across the service categories.
The highest-revenue category is:
Deep Home Cleaning — ₹508,964
2. Revenue by City
Shows revenue performance across the six cities using a geographic map.
The highest-revenue city is:
Pune — ₹228,727
3. City → Category Drilldown
Allows users to explore category-level performance within each city.
4. Month Focus
The dashboard provides a Month Focus parameter with:
- January
- February
- March
5. City Filter
Users can filter the dashboard by city to focus on individual city performance.
Key Dashboard Insight
City Operations
Bengaluru recorded 17 SLA breaches across 107 bookings, resulting in an SLA breach rate of approximately 15.9%, compared with the overall rate of 13.2%.
This makes Bengaluru the primary city requiring operational attention.
Category Performance
Deep Home Cleaning generated ₹508,964 from 176 bookings, making it the highest-revenue category.
It also recorded 21 SLA breaches, so its strong revenue performance should be monitored alongside service-level performance.
Tableau Public Dashboard
Live Dashboard
View the Tableau Public Dashboard
Replace PASTE_YOUR_TABLEAU_PUBLIC_LINK_HERE with your actual Tableau Public dashboard URL after publishing.

Dashboard Story
For the detailed management narratives, see:
DASHBOARD_STORY.md

### After you publish Tableau

If your Tableau Public link is something like:

```text
https://public.tableau.com/views/UrbanCompanyServiceOperations/Dashboard

change this:
**[View the Tableau Public Dashboard](PASTE_YOUR_TABLEAU_PUBLIC_LINK_HERE)**

to:
**[View the Tableau Public Dashboard](https://public.tableau.com/views/UrbanCompanyServiceOperations/Dashboard)**

