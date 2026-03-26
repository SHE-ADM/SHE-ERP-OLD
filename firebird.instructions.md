# Firebird 5 SQL/PSQL Instructions

- Always output runnable scripts with correct SET TERM blocks.
- Use SQL Dialect 3 and UTF8.
- Prefer MERGE for upsert patterns.
- Keep ETL procedures idempotent.
- Do not introduce physical deletes in facts; use FLAG_DELETED.