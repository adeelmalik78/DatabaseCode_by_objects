# Database Code By Object Directories

This repository demonstrates how to organize database scripts in directories organized by database objects.

Here is the high-level overview of the directory structure. Note that there is a directory for each schema (`schema1`, `schema2` and `schema3`). These directories could also be renamed to match database names in case you are store scripts for MSSQL or other similar databases.
```
.
├── README.md
├── liquibase.properties
└── sqlcode
    ├── rootchangelog.xml
    ├── schema1
    ├── schema2
    └── schema3
```

Following objects directories are used in this repo:
```
data
functions
index
materializedviews
packagebody
packages
procedures
schema1changelog.xml
tables
triggers
views
```

Here is the entire directory structure of this repo.

```.
├── liquibase.properties
└── sqlcode
    ├── rootchangelog.xml
    ├── schema1
    │   ├── data
    │   ├── functions
    │   ├── index
    │   ├── materializedviews
    │   ├── packagebody
    │   ├── packages
    │   ├── procedures
    │   ├── schema1changelog.xml
    │   ├── tables
    │   ├── triggers
    │   └── views
    ├── schema2
    │   ├── data
    │   ├── functions
    │   ├── index
    │   ├── materializedviews
    │   ├── packagebody
    │   ├── packages
    │   ├── procedures
    │   ├── schema2changelog.xml
    │   ├── tables
    │   ├── triggers
    │   └── views
    └── schema3
        ├── data
        ├── functions
        ├── index
        ├── materializedviews
        ├── packagebody
        ├── packages
        ├── procedures
        ├── schema3changelog.xml
        ├── tables
        ├── triggers
        └── views
```