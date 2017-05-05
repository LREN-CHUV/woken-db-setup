[![License](https://img.shields.io/badge/license-Apache--2.0-blue.svg)](https://github.com/LREN-CHUV/woken-db-setup/blob/master/LICENSE)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/9adcf4cbd730472386d0e71ab27b9b6b)](https://www.codacy.com/app/mirco-nasuti/woken-db-setup?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=LREN-CHUV/woken-db-setup&amp;utm_campaign=Badge_Grade)
[![CircleCI](https://circleci.com/gh/LREN-CHUV/woken-db-setup.svg?style=svg)](https://circleci.com/gh/LREN-CHUV/woken-db-setup) [![CHUV](https://img.shields.io/badge/CHUV-LREN-AF4C64.svg)](https://www.unil.ch/lren/en/home.html)

# Setup for database 'woken-db'

## Introduction

This project uses Flyway to manage the database migration scripts for the 'woken-db' database used by Woken.

## Usage

Run:
```console
$ docker run -i -t --rm -e FLYWAY_DBMS=postgres -e FLYWAY_HOST=`hostname` hbpmip/woken-db-setup:1.0.1 migrate
```

where the environment variables are:

* FLYWAY_DBMS: [required] Type of the database (oracle, postgres...).
* FLYWAY_HOST: [required] database host.
* FLYWAY_PORT: database port.
* FLYWAY_DATABASE_NAME: name of the database or schema
* FLYWAY_URL: JDBC url to the database, constructed by default from FLYWAY_DBMS, FLYWAY_HOST, FLYWAY_PORT and FLYWAY_DATABASE_NAME
* FLYWAY_DRIVER: Fully qualified classname of the jdbc driver (autodetected by default based on flyway.url)
* FLYWAY_USER: database user.
* FLYWAY_PASSWORD: database password.
* FLYWAY_SCHEMAS: Comma-separated list of schemas managed by Flyway
* FLYWAY_TABLE: Name of Flyway's metadata table (default: schema_version)

## Build

Run: `./build.sh`

## Publish on Docker Hub

Run: `./publish.sh`

## License

### Woken-db-setup

(this project)

Copyright (C) 2010-2017 [LREN CHUV](https://www.unil.ch/lren/en/home.html)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

### Flyway

Copyright (C) 2016-2017 [Boxfuse GmbH](https://boxfuse.com)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

## Trademark
Flyway is a registered trademark of [Boxfuse GmbH](https://boxfuse.com).
