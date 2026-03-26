# CLAUDE.md — Project Instructions (DW Sales / Firebird 5 / Delphi / Power BI)

## 0) Purpose
You are assisting on a Sales Data Warehouse for Firebird 5 with:
- Star schema centered on FACT_SALES_ORDER_ITEM (grain: 1 row = 1 order item)
- Incremental ETL in SQL/PSQL with watermark + lookback window + soft delete
- Optional daily aggregate FACT_SALES_DAILY for BI performance
- Operational runner in Delphi using FireDAC (console app) that executes SP_DW_RUN_SALES_ETL

Primary goals:
1) Stability and compatibility (Firebird 5, Delphi 7/13 constraints when applicable)
2) Predictable incremental loads (no speculative logic)
3) BI-friendly semantics for Power BI (Import) and future evolution

## 1) Non‑negotiable data model rules (do not violate)
### 1.1 Fact grain and business identifiers
- FACT_SALES_ORDER_ITEM grain is **one row per order item**.
- Keep source business identifiers in the fact:
  - ORDER_ID (int)
  - ORDER_ITEM_ID (bigint) — unique natural key for the item
  - ORDER_ITEM_NUMBER (int) — item line number inside ORDER_ID
- Uniqueness expectations:
  - ORDER_ITEM_ID is unique (preferred)
  - (ORDER_ID, ORDER_ITEM_NUMBER) also unique

### 1.2 Surrogate keys and natural keys
- All dimensions use surrogate keys prefixed with `SK_`.
- Keep the ERP/natural keys (e.g., *_ID_ERP) in dimensions for lineage and matching.

### 1.3 Role‑playing dates
- DIM_DATE is shared by multiple date roles in the fact:
  - SK_ORDER_DATE
  - SK_PICK_DATE
  - SK_INVOICE_DATE
  - SK_PROMISED_DELIVERY_DATE
  - SK_ACTUAL_DELIVERY_DATE
- DIM_DATE uses SK_DATE = YYYYMMDD (integer).

### 1.4 Status/type are dimensions (not separate facts)
- Order status is DIM_ORDER_STATUS (with flags like generates financial).
- Order type is DIM_ORDER_TYPE (returns/allowances are handled here, not by status splitting).

## 2) Implemented schema components (expected to exist)
### 2.1 Dimensions (minimum set)
DIM_DATE
DIM_COMPANY
DIM_CUSTOMER
DIM_SELLER
DIM_REPRESENTATIVE
DIM_CARRIER
DIM_FREIGHT_TYPE
DIM_PAYMENT_TERM
DIM_ORDER_CREDIT
DIM_ORDER_TYPE
DIM_BILLING_TYPE
DIM_ORDER_STATUS
DIM_PRODUCT_OWNER_COMPANY
DIM_SUPPLIER
DIM_PRODUCT

### 2.2 Facts
FACT_SALES_ORDER_ITEM (core)
FACT_SALES_DAILY (optional aggregate)

### 2.3 ETL control & logging
- ETL_CONTROL (watermark, lookback, last run status)
- ETL_RUN_LOG (run history, counters, status/message)

### 2.4 ETL staging (GTT)
- GTT_SCOPE_ORDERS (orders in scope)
- GTT_SCOPE_DATES (affected dates)
- GTT_SRC_SALES (normalized snapshot of source rows in scope)

## 3) ETL invariants (incremental rules)
These rules exist because source may not provide deterministic "last updated" timestamps.
Do not replace them with guesses.

### 3.1 Scope builder
- Watermark: include items where ORDER_ITEM_ID > ETL_CONTROL.LAST_MAX_ORDER_ITEM_ID
- Lookback: include orders where ORDER_DATE >= CURRENT_DATE - LOOKBACK_DAYS
- Mutable orders: include if INVOICE_DATE is NULL or status indicates not final (business flag)

### 3.2 Snapshot strategy
- Always snapshot ALL items for orders in scope into GTT_SRC_SALES.
- This enables detection of:
  - new items
  - changed items (dimension attributes and measures)
  - missing items => soft delete

### 3.3 Soft delete
- Never physically delete from FACT_SALES_ORDER_ITEM during incremental refresh.
- Mark missing items (within reprocessed scope) using FLAG_DELETED = 1, plus audit timestamps.

### 3.4 Aggregate refresh
- Refresh FACT_SALES_DAILY incrementally:
  - compute affected dates (GTT_SCOPE_DATES)
  - delete only those dates from FACT_SALES_DAILY
  - reinsert aggregates for those dates

## 4) Firebird 5 constraints (compatibility)
- SQL Dialect 3, UTF8, explicit PK/FK, indices on FKs.
- Avoid features not supported in Firebird 5.
- Prefer MERGE for upserts (dimensions and fact) and keep procedures idempotent.

## 5) Delphi/FireDAC runner expectations
- Runner executes stored procedure SP_DW_RUN_SALES_ETL(P_LOOKBACK_DAYS nullable).
- Must use explicit transactions (start/commit/rollback).
- Must implement retry for transient DB errors (lock conflict/deadlock/network).
- Must log to file with timestamps, status, and last watermark summary.

## 6) How to respond (output format)
When producing SQL/DDL/PSQL:
- Provide full runnable blocks with correct terminators (SET TERM ^ ; etc.).
- Prefer stable naming in English (commercial English).
- Include error-handling in PSQL (WHEN ANY DO ...) for ETL orchestration.

When producing Delphi examples:
- Provide FireDAC-based code compatible with Delphi 13, and avoid modern language features that break Delphi 7 unless explicitly allowed.
- Keep code objective and production-oriented (logging, retries, transactions).

## 7) Guardrails (avoid mistakes)
- Do NOT split sales into multiple facts by status (open/invoiced/picked). Keep one fact + status dimension.
- Do NOT turn ORDER_ITEM_NUMBER into a dimension.
- Do NOT index numeric measures individually in the fact unless there is a demonstrated analytic need.
- Do NOT assume attendance/meaning beyond what is specified in scripts.

## 8) Project artifacts you should reference
- Schema DDL: Script DW (dimensions + facts)
- ETL SQL/PSQL: Script ETL (control tables, GTTs, procedures, orchestration)
- Delphi runner: Script Delphi (INI, Logger, DB manager, Runner)
- Audit queries: Query (introspection of tables/fields/constraints/procedures)