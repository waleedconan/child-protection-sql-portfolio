# SQL Scripts Overview

This folder contains SQL queries used to analyze child protection data across multiple states and partners. The queries are divided into two categories:

## 📄 Basic Queries (`01_basic_queries.sql`)
These include foundational data pulls and aggregations:
- Partner service mapping
- Referral tracking
- Case action counts
- Service types per location

## 🧠 Advanced Queries (`02_advanced_queries.sql`)
These involve analytical logic using window functions and CTEs:
- Partner performance ranking
- Detecting latest actions
- Referral volume trends
- Cumulative referral tracking

Each query is written for clarity and includes JOINs across core relational tables: Partners, Services, Referrals, and Locations.