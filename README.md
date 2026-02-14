# 📊 Repeat Customer Signal Analysis — E-Commerce Platform

## 📌 Project Overview

E-commerce platforms often experience rapid growth driven by aggressive discounting and promotional strategies. While this can inflate short-term sales volume, it raises a critical strategic question:

> **Is growth being driven by organic repeat demand, or by discount-led customer acquisition that may not be sustainable in the long run?**

This project simulates a **product-level repeat customer signal analysis** for an Indian e-commerce platform (Flipkart-inspired). The objective is to evaluate whether customer acquisition efforts are justified by repeat behavior, using realistic transactional patterns and business-oriented analytical logic.

The analysis is designed to mirror how real analytics teams assess **unit economics, acquisition quality, and sustainability of growth**, especially when direct customer-level identifiers are unavailable.

---

## 🎯 Business Objectives

This project aims to help leadership answer the following questions:

- Which products demonstrate **strong repeat customer signals**?
- Which products rely heavily on **discount-driven demand**?
- Is customer acquisition likely to be **sustainable at scale**?
- Where should discounting and retention strategies be adjusted?

---

## 🧠 Analytical Approach

In many real-world scenarios (public, anonymized, or privacy-restricted data), direct customer-level purchase histories are not available. In such cases, analysts rely on **behavioral proxies** to infer repeat intent.

### Repeat customer behavior was inferred using three product-level signals:

1. **Volume Continuity**
   - Month-over-month growth in units sold
   - Indicates whether demand sustains beyond one-time purchases

2. **Price Stability**
   - Ability to maintain or increase average selling price
   - Suggests customer willingness to repurchase without price erosion

3. **Discount Dependency**
   - Changes in discount intensity over time
   - Rising discounts required to sustain volume indicate incentive-driven demand

Based on these signals, each product-month was classified into one of the following categories:
- **Strong Repeat Signal**
- **Discount-Driven Demand**
- **Weak / Mixed Behavior**

This approach focuses on **acquisition quality and unit economics**, rather than vanity metrics such as raw sales volume.

---

## 🗂️ Dataset Description

The analysis uses structured, realistic, synthetic data modeled on typical e-commerce patterns.

### Tables Used

**products**
- product_id
- product_name
- category
- brand
- base_price

**product_sales**
- product_id
- month
- units_sold
- avg_selling_price
- avg_discount_pct

The dataset spans **12 months** and captures different behavioral patterns across product categories such as Electronics, Fashion, Home, and Beauty.

---

## 🛠️ Tools & Technologies

- **SQL (PostgreSQL)** — data modeling, transformations, and behavioral logic
- **Power BI** — executive-level dashboards and visual storytelling
- **GitHub** — documentation and version control

The tools and structure reflect **real business analytics workflows** rather than academic exercises.

---

## 📈 Dashboard Summary

### 🔹 Page 1: Executive Summary — *Is Our Growth Healthy?*

- High-level KPIs: Total Units Sold, Average Discount %, Strong Repeat %, CAC Risk %
- Clear split between organic repeat-driven volume and discount-driven volume
- Enables leadership to assess growth quality within seconds

---

### 🔹 Page 2: Repeat Signal Deep Dive — *Why Are Some Products Risky?*

- Month-over-month transparency for units, price, and discount changes
- Discount escalation heatmap to identify incentive dependency
- Clear explanation of how repeat signals are derived

---

### 🔹 Page 3: Risk & Recommendations — *What Should Leadership Act On?*

- Product risk matrix (Volume Growth vs Discount Intensity)
- Identification of high-volume but low-repeat products
- Direct linkage between analytical findings and strategic actions

---

## 📌 Key Insights

- A significant portion of total sales volume is driven by products that require **increasing discounts to sustain growth**
- Several high-volume products show **weak repeat signals**, indicating reliance on incentive-led acquisition rather than organic demand
- Products that maintain or improve volume while **discounts decline** exhibit stronger repeat behavior and healthier unit economics
- Discount dependency varies significantly by product, highlighting the need for **product-specific acquisition strategies**
- Continued reliance on blanket discounting risks inflating growth metrics while eroding long-term profitability

---

## ✅ Business Recommendations

Based on the analysis, the following actions are recommended:

1. **Reduce Blanket Discounting**
   - Avoid uniform discounts across all products
   - High-volume, low-repeat products should be repriced or deprioritized in acquisition campaigns

2. **Focus Acquisition Spend on High-Quality Products**
   - Redirect marketing and promotional efforts toward products showing strong repeat signals
   - These products are more likely to justify acquisition costs over time

3. **Shift from Acquisition to Retention**
   - Introduce targeted retention and loyalty strategies instead of repeated acquisition incentives
   - Reward repeat behavior rather than one-time purchases

4. **Use Repeat Signals as an Early Warning System**
   - Product-level repeat signals can act as leading indicators of CAC inefficiency
   - Enables corrective action before financial impact becomes visible in profitability metrics

---

## ⚠️ Assumptions & Limitations

- Customer-level identifiers were not available; repeat behavior is inferred using product-level proxies
- Marketing spend, logistics costs, and returns were not explicitly modeled
- The analysis provides **directional strategic insights**, not precise financial forecasting

Detailed assumptions and limitations are documented separately for transparency.

---

## 👩‍💻 Author

**Shreya Sabale**  
Aspiring Data Analyst | Business Analytics | SQL | Power BI  

🔗 LinkedIn: *(add your LinkedIn profile link)*  
📁 Portfolio: *(add your portfolio link)*  

---

## 📌 Final Note

This project was built to reflect how **real analytics teams evaluate growth sustainability and acquisition quality**, not as a visualization exercise. The focus is on **decision support, clarity, and business impact**.
