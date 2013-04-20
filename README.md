# sonar-js

Simple demo project to run a Sonar analysis on a js project.

## Prerequisites
* Node.js : http://nodejs.org/
* Python : http://www.python.org/ (only to convert lcov file to cobertura, for Jenkins CI)
* Sonar : http://www.sonarsource.org/
* Sonar Javascript plugin : http://docs.codehaus.org/display/SONAR/JavaScript+Plugin
* Make : http://www.gnu.org/software/make/

The actual configuration in ```sonar-project.properties``` assumes the Sonar server is running on [http://localhost:9000](http://localhost:9000).

You can change that by specifying the right values in ```sonar-project.properties``` (see http://docs.codehaus.org/display/SONAR/Analysis+Parameters).

## Running
* Install node dependencies with ```npm install```
* Run the ci task with ```make ci```
* Check the results : [http://localhost:9000](http://localhost:9000) or wherever.

## Tasks in the Makefile
* Clean with ```make clean```
* Run tests with ```make test```
* Run tests and generate a xunit compatible file with ```make xunit```
* Run coverage analysis and generate a lcov compatible file with ```make coverage```
* Run coverage analysis and generate a cobertura compatible file with ```make coverage```
* Run jshint with ```make jshint```
* Run jhsint and generate a checkstyle compatible file with ```make checkstyle```
* Run the Sonar analysis with ```make sonar```
* Run a CI related set of tasks ```make ci```

All generated files are generated in the reports folder.

Only tested on linux, you may have to adapt some stuff on other platforms.
