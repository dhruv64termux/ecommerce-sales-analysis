# 📊 E-Commerce Sales Data Analysis

An end-to-end analysis of an online store's sales performance using **Python, Pandas, SQL (SQLite), Matplotlib, and Seaborn**.

This project answers four important business questions related to products, monthly sales, regional performance, and sales and profit trends.

---

## 🎯 Objective

The project aims to answer the following business questions:

1. Which products generate the highest revenue?
2. Which months have the highest sales?
3. Which regions perform best?
4. What are the sales and profit trends?

---

## 📁 Dataset

- **Source:** Sample Superstore Dataset (Kaggle)
- **Dataset Size:** 9,994 rows and 21 columns
- **Period Covered:** 3 January 2014 – 30 December 2017
- **Key Columns:** Order Date, Region, Category, Sub-Category, Product Name, Sales, Quantity, Discount, Profit.

---

## 🛠️ Tools and Technologies

| Tool / Technology | Purpose |
|---|---|
| Python 3 (Anaconda) | Programming and analysis |
| Pandas | Data cleaning and manipulation |
| NumPy | Numerical operations |
| Matplotlib | Data visualization |
| Seaborn | Statistical visualization |
| SQLite | SQL queries and database management |
| Jupyter Notebook | Development environment |

---

## 📂 Project Structure

```text
project/
│
├── data/
│   ├── superstore.csv
│   └── ecommerce.db
│
├── notebooks/
│   └── analysis.ipynb
│
├── sql/
│   └── queries.sql
│
├── visualizations/
│   └── charts.png
│
├── reports/
│   ├── final_report
│   └── analysis.html
│
└── README.md
```

---

## ⚙️ Methodology

**1. Data Inspection and Cleaning**
- Checked data types, missing values, and duplicate rows.
- No missing values or duplicate rows were found.
- Converted `Order Date` into datetime format.

**2. Data Analysis Using Pandas**
- Grouped sales and profit by product, month, and region.
- Calculated important business metrics.
- Created visualizations to identify trends.

**3. SQL Analysis**
- Loaded the dataset into SQLite.
- Wrote SQL queries to answer all four business questions.
- Stored queries in `sql/queries.sql`.

**4. Validation**
- Compared SQL results with Pandas results.
- Verified that both approaches produced matching results.

---

## 📈 Key Findings

### Overall Business Performance

| Metric | Value |
|---|---:|
| Total Sales | $2,297,200.86 |
| Total Profit | $286,397.02 |
| Overall Profit Margin | 12.47% |

### 1. 🏆 Top Products by Revenue

The **Canon imageCLASS 2200 Advanced Copier** generated the highest revenue, with approximately $61,600 in sales, more than double the second-ranked product.

Office machines and equipment dominate the top-performing products.

| Rank | Product | Sales |
|---:|---|---:|
| 1 | Canon imageCLASS 2200 Advanced Copier | $61,599.82 |
| 2 | Fellowes PB500 Electric Punch Plastic Comb Binding Machine | $27,453.38 |
| 3 | Cisco TelePresence System EX90 Videoconferencing Unit | $22,638.48 |
| 4 | HON 5400 Series Task Chairs for Big and Tall | $21,870.58 |
| 5 | GBC DocuBind TL300 Electric Binding System | $19,823.48 |

**Visualization:** Top 10 Products by Revenue

### 2. 📅 Highest Sales Months

The strongest sales months are:

- November: $352,461
- December: $325,294
- September: $307,650

The weakest months are:

- January: $94,925
- February: $59,751

November, December, and September consistently rank among the top three sales months across all four years.

This indicates strong holiday-season demand and a post-holiday sales decline.

**Visualization:** Monthly Sales

### 3. 🌍 Regional Performance

| Region | Sales | Profit | Profit Margin |
|---|---:|---:|---:|
| West | $725,457.82 | $108,418.45 | 14.94% |
| East | $678,781.24 | $91,522.78 | 13.48% |
| Central | $501,239.89 | $39,706.36 | 7.92% |
| South | $391,721.90 | $46,749.43 | 11.93% |

**Key Insights:**

- The West region performs best in sales, profit, and profit margin.
- The Central region has the lowest profit margin at 7.92%.
- The Central region requires further investigation into discounting and product mix.

**Visualization:** Sales by Region

### 4. 📊 Sales and Profit Trends

| Year | Sales | Profit | Margin |
|---|---:|---:|---:|
| 2014 | $484,247.50 | $49,543.97 | 10.2% |
| 2015 | $470,532.51 | $61,618.60 | 13.1% |
| 2016 | $609,205.60 | $81,795.17 | 13.4% |
| 2017 | $733,215.26 | $93,439.27 | 12.7% |

**Key Insights:**

- Sales decreased slightly in 2015 and increased every year afterward.
- Sales increased approximately 51% between 2014 and 2017.
- Profit increased approximately 89% over the same period.
- Profit margin improved from 10.2% in 2014 to around 13% afterward.
- The largest monthly loss occurred in January 2015 (approximately -$3,281).
- Discount and profit have a mild negative correlation of -0.22.

**Visualizations:**
- Monthly Sales Trend
- Monthly Profit Trend

---

## 🔍 Deeper Insights

### 1. Discounts and Profit

A mild negative correlation of **-0.22** was observed between discount and profit.

Grouping order lines by discount level revealed the following:

| Discount Level | Average Profit per Order Line |
|---|---:|
| 0% | $66.90 |
| 1–20% | $26.50 |
| 21–40% | -$77.86 |
| Above 40% | -$106.71 |

Higher discount levels are associated with negative average profits.

**Visualization:** Discount vs Profit

### 2. Profit by Sub-Category

**Loss-making sub-categories:**

- Tables: Approximately -$17,725
- Bookcases: Approximately -$3,473
- Supplies: Approximately -$1,189

**Most profitable sub-categories:**

- Copiers: Approximately $55,618
- Phones: Approximately $44,516
- Accessories: Approximately $41,937

**Category-level insights:**

- Technology generated approximately $145,455 in profit.
- Office Supplies generated approximately $122,491 in profit.
- Furniture generated only approximately $18,451 in profit on $741,999 in sales, with a margin of around 2.5%.

**Visualization:** Profit by Sub-Category

### 3. Products That Lose Money

The biggest product-level losses include:

| Product | Approximate Loss |
|---|---:|
| Cubify CubeX 3D Printer (Double Head Print) | -$8,880 |
| Lexmark MX611dhe Monochrome Laser Printer | -$4,590 |

These products require further investigation into pricing, discounts, and profitability.

---

## 💡 Business Recommendations

Based on the analysis, the following recommendations can help improve business performance:

1. **Control Discounts:** Consider limiting discounts to around 20%, since deeper discounts are associated with average losses.
2. **Review Product Pricing:** Investigate Tables and Bookcases, which generate losses despite their sales.
3. **Seasonal Planning:** Increase inventory and marketing campaigns before September to December.
4. **Improve Slow-Month Sales:** Consider promotional strategies during January and February.
5. **Investigate Regional Performance:** Review discounting and product mix in the Central region.
6. **Focus on Profitable Products:** Continue promoting high-revenue equipment lines such as copiers, binding machines, and printers.

---

## ⚠️ Limitations

- The analysis is based on a single dataset without customer-level behaviour or marketing data.
- Monthly totals combine four years of data, so unusually strong years may influence rankings.
- Sales and profit are reported in the dataset's original currency without inflation adjustment.
- Correlation between discount and profit does not prove causation.

---

## 🚀 How to Run the Project

**Step 1:** Clone or download this repository.

**Step 2:** Install the required libraries.

```bash
pip install pandas numpy matplotlib seaborn notebook
```

**Step 3:** Place `superstore.csv` inside the `data/` folder.

**Step 4:** Open the Jupyter Notebook.

```bash
jupyter notebook
```

**Step 5:** Open:

```text
notebooks/analysis.ipynb
```

**Step 6:** In the first cell, set `BASE` to the path of your project folder.

**Step 7:** Run all cells from top to bottom using:

`Kernel → Restart & Run All`

### Project Outputs

- Charts are saved in `visualizations/`.
- SQLite database is saved in `data/ecommerce.db`.
- SQL queries are saved in `sql/queries.sql`.
- Final report and HTML notebook export are saved in `reports/`.

---

## 👨‍💻 Author

**Dhruv Rajpurohit**

BSc Data Science Student

---

⭐ If you find this project useful, feel free to explore the repository!
