# use the tools as dev dependencies rather than installing them globaly
# it lets you handle specific versions of the tooling for each of your projects
MOCHA=node_modules/.bin/mocha
JSCOVER=node_modules/.bin/jscover
JSHINT=node_modules/.bin/jshint

# test files must end with ".test.js"
TESTS=$(shell find test/ -name "*.test.js")

test:
	$(MOCHA) -R spec $(TESTS)

xunit:
	@# check if reports folder exists, if not create it
	@test -d reports || mkdir reports
	export XUNIT_FILE="reports/TESTS-xunit.xml"; \
	$(MOCHA) -R xunit-file $(TESTS)

coverage:
	@# check if reports folder exists, if not create it
	@test -d reports || mkdir reports
	$(JSCOVER) src/ src-cov/
	TEST_COV=1 $(MOCHA) -R mocha-lcov-reporter $(TESTS) > reports/coverage.lcov
	rm -rf src-cov/

jshint:
	$(JSHINT) src test

checkstyle:
	@# check if reports folder exists, if not create it
	@test -d reports || mkdir reports
	$(JSHINT) src test --reporter=checkstyle > reports/checkstyle.xml

sonar:
	@# add the sonar sonar-runner executable to the PATH
	PATH="$$PWD/tools/sonar-runner-2.1/bin:$$PATH"; \
	sonar-runner

ci: xunit coverage checkstyle sonar

.PHONY: test coverage xunit jshint checkstyle sonar