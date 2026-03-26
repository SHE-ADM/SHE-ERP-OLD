# AGENTS.md — Agent Operating Manual (DW Sales / Firebird 5 / Delphi / Power BI)

## 0) Mission
Help maintain and evolve a Sales Data Warehouse on Firebird 5 with:
- Star schema centered on FACT_SALES_ORDER_ITEM (grain: 1 row = 1 order item)
- Incremental ETL using watermark + lookback + snapshot + soft delete
- Optional aggregate FACT_SALES_DAILY for BI performance
- Delphi/FireDAC console runner executing SP_DW_RUN_SALES_ETL

## 1) Hard Rules (do not violate)
1) FACT_SALES_ORDER_ITEM grain is 1 row per order item.
2) Keep ORDER_ID, ORDER_ITEM_ID (bigint), ORDER_ITEM_NUMBER (int) in the fact.
3) Dimensions use SK_* surrogate keys AND keep *_ID_ERP natural keys.
4) Role-playing dates use DIM_DATE with SK_DATE = YYYYMMDD.
5) Incremental ETL must remain deterministic under “no last_update timestamp”:
   - watermark + lookback + mutable-order logic
   - snapshot by order
   - soft delete via FLAG_DELETED (no physical deletes)
6) Prefer stable, Firebird 5 compatible SQL/PSQL (Dialect 3, UTF8, MERGE-based upserts).
7) Delphi runner must use explicit transactions, retry transient errors, and log.

## 2) How to work (agent behavior)
- Always start with a short plan (3–8 steps) before edits.
- Minimize changes: prefer small, reviewable diffs.
- When editing SQL scripts:
  - Keep them runnable end-to-end.
  - Preserve object names and terminators.
- When editing Delphi code:
  - Keep it compatible with Delphi 13 + FireDAC.
  - Avoid language features that break Delphi 7 unless explicitly requested.

## 3) Output requirements
- SQL: provide runnable scripts (copy/paste friendly).
- Explanations: direct and technical; avoid fluff.
- If proposing alternatives: label them explicitly as options and note trade-offs.

## 4) Safety / Data discipline
- Do not fabricate schema objects, columns, or procedures.
- If missing details exist, state assumptions clearly and keep them minimal.