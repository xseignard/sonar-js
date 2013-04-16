# sonar-js

Simple demo project to run a Sonar analysis on a js project.

## Prerequisites
* Node.js : http://nodejs.org/
* Sonar : http://www.sonarsource.org/
* Make : http://www.gnu.org/software/make/

The actual configuration in ```sonar-project.properties``` assumes the Sonar server is running on [http://localhost:9000](http://localhost:9000).

You can change that by specifying the right values in ```sonar-project.properties``` (see http://docs.codehaus.org/display/SONAR/Analysis+Parameters).

## Running
* Install node dependencies : ```npm install```
* Run the coverage recipe : ```make coverage```
* Run the Sonar analysis : ```make sonar```
* Check the results : [http://localhost:9000](http://localhost:9000) or wherever.

## Misc
* Run tests with ```make test```
* Run tests and generate a xunit compatible output with ```make xunit```
* Run jhsint and generate a checkstyle compatible output with ```make jshint```

All generated files are generated in the reports folder.

Only tested on linux, you may have to adapt some stuff on other platforms.
