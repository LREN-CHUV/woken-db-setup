CREATE TABLE "results_cache"
(
  "job_id" character varying(128) NOT NULL,
  "node" character varying(32) NOT NULL,
  "table_name" character varying(128) NOT NULL,
  "table_contents_hash" character varying(128),
  "query" jsonb NOT NULL,
  "created_at" timestamp default now(),
  "last_used" timestamp,
  "data" jsonb,
  "shape" character varying(256),
  "function" character varying(256),

  CONSTRAINT pk_results_cache PRIMARY KEY ("job_id", "node", "table_name", "table_contents_hash", "query")
)
WITH (
  OIDS=FALSE
);
