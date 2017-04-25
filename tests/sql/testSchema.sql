BEGIN;
SELECT plan( 5 );

SELECT has_table( 'job_result' );

SELECT has_column( 'job_result', 'job_id' );
SELECT has_column( 'job_result', 'node' );
SELECT col_is_pk(  'job_result', Array['job_id', 'node'] );
SELECT has_column( 'job_result', 'data' );

SELECT * FROM finish();
ROLLBACK;
