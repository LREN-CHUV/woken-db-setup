CREATE TABLE job_cache
(
  job_id character varying(128) NOT NULL,
  node character varying(32) NOT NULL,
  timestamp timestamp default now(),
  json_data jsonb,
  shape character varying(256),
  function character varying(256),

  CONSTRAINT pk_job_cache PRIMARY KEY (job_id, node)
)
WITH (
  OIDS=FALSE
);
