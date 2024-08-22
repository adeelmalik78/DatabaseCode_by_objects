# Database Code By Object Directories

This repository demonstrates how to organize database scripts in directories organized by database objects.

## Directory Structure
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

Here is the entire directory structure of this repo. Note that each schema directory has its own changelog file (e.g., `schema1changelog.xml`). 

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

## Changelog files
Note that there is a [rootchangelog.xml](sqlcode/rootchangelog.xml) which serves as the entry point changelog for Liquibase (as specified in [liquibase.properties](liquibase.properties) file). This file points to schemaXchangelog.xml files:
```xml
  <include file="schema1/schema1changelog.xml" relativeToChangelogFile="true"/>
  <include file="schema2/schema2changelog.xml" relativeToChangelogFile="true"/>
  <include file="schema3/schema3changelog.xml" relativeToChangelogFile="true"/>
```

Each schemaXchangelog.xml file points to a changelog.xml file in each object directory:
```xml
  <include file="tables/changelog.xml" relativeToChangelogFile="true"/>
  <include file="index/changelog.xml" relativeToChangelogFile="true"/>
  <include file="views/changelog.xml" relativeToChangelogFile="true"/>
  <include file="functions/changelog.xml" relativeToChangelogFile="true"/>
  <include file="procedures/changelog.xml" relativeToChangelogFile="true"/>
  <include file="packages/changelog.xml" relativeToChangelogFile="true"/>
  <include file="packagebody/changelog.xml" relativeToChangelogFile="true"/>
  <include file="triggers/changelog.xml" relativeToChangelogFile="true"/>
  <include file="data/changelog.xml" relativeToChangelogFile="true"/>
  <include file="materializedviews/changelog.xml" relativeToChangelogFile="true"/>
```

