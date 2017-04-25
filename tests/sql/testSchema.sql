BEGIN;
SELECT plan( 18 );

SELECT has_table( 'domains' );
SELECT has_table( 'stuff' );
SELECT has_table( 'sources' );
SELECT has_table( 'domain_stuff' );

SELECT has_column( 'domains', 'id' );
SELECT col_is_pk(  'domains', 'id' );
SELECT has_column( 'domains', 'domain' );

SELECT has_column( 'stuff',   'id' );
SELECT col_is_pk(  'stuff', 'id' );
SELECT has_column( 'stuff',   'name' );

SELECT has_column( 'sources', 'id' );
SELECT col_is_pk(  'sources', 'id' );
SELECT has_column( 'sources', 'name' );

SELECT has_column( 'domain_stuff', 'domain_id' );
SELECT has_column( 'domain_stuff', 'source_id' );
SELECT has_column( 'domain_stuff', 'stuff_id' );
SELECT col_is_pk(
    'domain_stuff',
    ARRAY['domain_id', 'source_id', 'stuff_id']
);

SELECT can_ok(
    'insert_stuff',
    ARRAY[ 'text', 'integer[]', 'integer', 'integer' ]
);

SELECT * FROM finish();
ROLLBACK;
