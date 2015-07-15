# DLMworkshops
A collection of scripts and resources that are used for the Redgate DLM workshops.

- DLM1, 2 and 3 directories
Contain files used for the Redgate source control, continuous integration and deployment workshops
respectively.

- Databases
This directory includes a scripted out version of the Dev databases we use for the workshops.
The VM used for the workshop is set up with two servers: .\DEV and .\PROD. These servers contain
the following databases. The schemas for all the databases with similar names begin the workshop
in a near identical state with some minor modifications between Dev and Prod databases etc to 
simulate new changes:

.\DEV
- AdventureWorks2012_Dev
- AdventureWorks2012_Test
- BlogsDotRedgate_Dev
- BlogsDotRedgate_Integration
- BlogsDotRedgate_Test
- BlogsDotRedgate_Staging
- RedGate <-- Created and managed by Redgate tools
- SimpleTalk_Dev
- SimpleTalk_Integration
- SimpleTalk_Test
- SimpleTalk_Staging
- SqlServerCentral_Dev
- SqlServerCentral_Integration
- SqlServerCentral_Test
- SqlServerCentral_Staging

.\PROD
- AdventureWorks2012_Production
- BlogsDotRedgate_Production
- RedGate <-- Created and managed by Redgate tools
- SimpleTalk_Production
- SqlServerCentral_Production

The SimpleTalk and BlogsDotRedgate databases have been created purely for demo
purposes and they can be used with the SimpleTalk web app which is included in 
the SimpleTalk directory.

The SqlServerCentral database is a copy of the SQL database that backends
www.sqlservercentral.com.

Note that the AdventureWorks database we use has been modified slightly to 
exclude Full-Text Indexes.

The data insert scripts can be used to populate the SimpleTalk and SqlServerCentral
databases with some test data. The SimpleTalk data insert script can also be used 
against the BlogsDotRedgate database since this shares an identical schema.

The AdventureWorks DB contains too much data to practically put into source control
but you can download your own copy. 