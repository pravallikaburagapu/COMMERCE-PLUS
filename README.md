CommercePulse Dashboard | Power BI

An end-to-end Power BI dashboard project for analyzing e-commerce operations across customer behavior, order fulfillment, product sales, seller performance, and payment methods.

This project provides actionable insights into the entire e-commerce pipeline using interactive visuals and DAX-based KPIs.


---

📊 Dashboard Highlights

Total Orders, Revenue, and Payments

New vs Returning Customers

Top 10 Sellers by Revenue

Average Delivery Time & Late Deliveries

Product Category Performance

Seller-wise Order Distribution

Payment Method Trends

Dynamic Filters and Slicers for deep analysis



---

🗂️ Project Directory

📁 E-Commerce-PowerBI-Dashboard/
├── 📊 PowerBI Report/
│   └── CommercePulse_Dashboard.pbix
├── 📁 Data/
│   ├── customers.csv
│   ├── geolocation.csv
│   ├── order_items.csv
│   ├── orders.csv
│   ├── payments.csv
│   ├── products.csv
│   └── sellers.csv
├── 📁 SQL/
│   ├── joins.sql
│   ├── triggers.sql
│   ├── procedures.sql
│   ├── window_functions.sql
│   ├── top_sellers_query.sql
│   └── new_returning_customers.sql
├── 📁 Python/
│   └── data_cleaning_and_merge.py
├── 📁 DAX/
│   ├── Orders & Customers.dax
│   ├── Revenue & Payments.dax
│   ├── Delivery Analysis.dax
│   ├── Product Performance.dax
│   └── Seller Metrics.dax
└── README.md


---

🧾 Datasets Used

orders.csv – Order details including purchase/delivery timestamps, status.

order_items.csv – Items in each order, price, freight value.

customers.csv – Customer ID, city, state.

products.csv – Product name and category.

payments.csv – Payment type, installments, and amounts.

sellers.csv – Seller details and locations.

geolocation.csv – Geolocation data for customers/sellers.



---

⚙️ Tools & Technologies

Power BI (Dashboard design and DAX)

MySQL (Joins, procedures, triggers)

Python (Pandas) (Preprocessing, merging)

DAX (KPIs, Measures, Calculated Columns)



---

🧠 Key DAX Measures

Total Revenue, Average Payment Value

New Customers, Repeat Customers

Top Product Categories

Average Delivery Time

Orders per Seller, Total Sellers


🚀 Getting Started

1. Clone the repository


2. Open CommercePulse_Dashboard.pbix in Power BI Desktop


3. Load the datasets from the /Data/ folder


4. Explore and customize!






---

Let me know if you'd like a version of this README with images, badges, or GIF previews of the dashboard.
