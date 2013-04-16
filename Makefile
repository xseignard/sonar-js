MOCHA=node_modules/.bin/mocha
JSCOVER=node_modules/.bin/jscover
JSHINT=node_modules/.bin/jshint

TESTS=$(shell find test/ -name "*.test.js")

test:
	$(MOCHA) -R spec $(TESTS)

coverage:
	$(JSCOVER) src/ src-cov/
	TEST_COV=1 $(MOCHA) -R mocha-lcov-reporter $(TESTS) > reports/coverage.lcov
	rm -rf src-cov/

jshint:
	$(JSHINT) src test --reporter=checkstyle > reports/checkstyle.xml

sonar:
	PATH="$$PWD/tools/sonar-runner-2.1/bin:$$PATH"; \
	sonar-runner

.PHONY: test coverage jshint sonar