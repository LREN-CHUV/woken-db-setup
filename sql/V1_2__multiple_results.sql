ALTER TABLE job_result
  ADD COLUMN result_name character varying(32) DEFAULT '',
  ADD COLUMN result_title character varying(256),
  ALTER COLUMN shape SET not null,
  DROP CONSTRAINT pk_job_result,
  ADD CONSTRAINT pk_job_result PRIMARY KEY (job_id, shape, result_name, node)
;

UPDATE job_result SET result_name = '';

ALTER TABLE job_result
  ALTER COLUMN result_name SET not null
;