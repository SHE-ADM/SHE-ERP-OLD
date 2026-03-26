# GitHub Copilot — Repository Instructions (DW Sales / Firebird 5 / Delphi / Power BI)

## Scope
These instructions apply to all Copilot requests in this repository.

## Project Summary
Sales Data Warehouse on Firebird 5:
- Star schema with FACT_SALES_ORDER_ITEM (grain: 1 row = 1 order item)
- Incremental ETL: watermark + lookback + snapshot + soft delete
- Optional aggregate FACT_SALES_DAILY for BI
- Delphi/FireDAC console runner executes SP_DW_RUN_SALES_ETL

## Data Model Rules (non-negotiable)
- FACT_SALES_ORDER_ITEM grain is 1 row per order item.
- Keep ORDER_ID, ORDER_ITEM_ID (bigint), ORDER_ITEM_NUMBER (int) in the fact.
- Dimensions use SK_* surrogate keys AND keep *_ID_ERP natural keys.
- DIM_DATE is role-playing; SK_DATE = YYYYMMDD; fact has multiple date role SKs.
- Status and type are dimensions (do not split facts by status).

## ETL Rules (non-negotiable)
- Incremental scope must follow:
  - watermark on ORDER_ITEM_ID
  - lookback window by ORDER_DATE
  - include mutable orders (e.g., not invoiced/final)
- Stage snapshot must include all items for orders in scope.
- Soft delete only: set FLAG_DELETED=1 for missing items within scope; do not physically delete.
- Aggregate refresh must be incremental by affected dates.

## Firebird 5 Compatibility
- SQL Dialect 3; UTF8; explicit PK/FK; indexes on FKs.
- Prefer MERGE for upserts and idempotent stored procedures.
- Avoid unsupported features and avoid fragile syntax.

## Delphi / FireDAC Expectations
- Use explicit transactions and proper error handling.
- Implement retry for transient DB issues (lock conflict/deadlock/network).
- Log all runs with timestamps, status, and watermark summary.

## Response Style
- Be technical, clear, and objective.
- Provide copy/paste friendly code blocks.