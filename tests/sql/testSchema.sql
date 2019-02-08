BEGIN;
SELECT plan( 11 );

SELECT has_table( 'job_result' );

SELECT has_column( 'job_result', 'job_id' );
SELECT has_column( 'job_result', 'node' );
SELECT has_column( 'job_result', 'result_name');
SELECT has_column( 'job_result', 'result_title');
SELECT col_is_pk(  'job_result', Array['job_id', 'shape', 'result_name', 'node'] );
SELECT has_column( 'job_result', 'data' );

SELECT has_table( 'results_cache' );

SELECT has_column( 'results_cache', 'table_name' );
SELECT has_column( 'results_cache', 'node' );
SELECT has_column( 'results_cache', 'data' );

SELECT * FROM finish();
ROLLBACK;
