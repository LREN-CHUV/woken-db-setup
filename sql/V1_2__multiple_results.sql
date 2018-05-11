ALTER TABLE job_result
  ADD COLUMN result_name character varying(32) NOT NULL DEFAULT '',
  ADD COLUMN result_title character varying(256),
  ALTER COLUMN shape SET not null,
  DROP CONSTRAINT pk_job_result,
  ADD CONSTRAINT pk_job_result PRIMARY KEY (job_id, shape, result_name, node)
;
