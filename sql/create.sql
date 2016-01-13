
CREATE TABLE job_result
(
  job_id character varying(32) NOT NULL,
  node character varying(32) NOT NULL,
  timestamp timestamp default now(),
  data text,
  error character varying(256),
  shape character varying(256),

  CONSTRAINT pk_job_result PRIMARY KEY (job_id, node)
)
WITH (
  OIDS=FALSE
);
