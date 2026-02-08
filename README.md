# -plsql_window_functions_-29126-_-Fiacre-
SQL that helps inyange keep track of their supply and demand across the provinces of Rwanda. 

Market Leadership & Ranking
I used RANK() partitioned by region to identify which milk variants (e.g., Whole Milk, Low Fat) are the top performers in each province. This allows the logistics team to prioritize high-demand products for specific regional warehouses.

Expenditure Tracking & Cumulative Trends
Financial management is handled through cumulative window aggregates. We track operating_expenditure over time to see the "burn rate" per province, helping management identify regions that are exceeding their quarterly budgets.

Growth & Demand Forecasting
Using LAG() and AVG() (Moving Averages), the system calculates:
Month-over-Month (MoM) Growth: Identifying seasonal spikes in milk consumption.
3-Month Rolling Average: Smoothing out weekly fluctuations to see the true demand trend for products like ikivuguto and UHT milk.

I applied NTILE(6) to segment provinces into performance "sextiles." This identifies:
Top-Tier Regions: High-volume distribution hubs.
Underperforming Regions: Areas requiring targeted marketing or supply chain improvements.





