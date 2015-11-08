#!/bin/bash -e

get_script_dir () {
     SOURCE="${BASH_SOURCE[0]}"
     while [ -h "$SOURCE" ]; do
          DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
          SOURCE="$( readlink "$SOURCE" )"
          [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
     done
     $( cd -P "$( dirname "$SOURCE" )" )
     pwd
}

sudo docker rm --force test-postgres 2> /dev/null | true
sudo docker run --name test-postgres \
    -v $(get_script_dir):/tests \
    -e POSTGRES_PASSWORD=test -p 5432:5432 -d postgres:9.4.4

sudo docker exec test-postgres \
    /bin/bash -c 'while ! pg_isready -U postgres ; do sleep 1; done && exec psql -U postgres -f /tests/create.sql'
