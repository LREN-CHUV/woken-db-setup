ALTER TABLE job_result
  ALTER COLUMN error TYPE TEXT USING error :: TEXT
;
ALTER TABLE job_result
  ADD COLUMN parameters jsonb
;
