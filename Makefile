TESTS = test/unit/*.js
REPORTER = spec
TIMEOUT = 5000
JSCOVERAGE = ./node_modules/visionmedia-jscoverage/jscoverage
MOCHA = ./node_modules/mocha/bin/mocha

install:
	@npm install

test: install
	@$(MOCHA) --reporter $(REPORTER) --timeout $(TIMEOUT) \
		$(MOCHA_OPTS) $(TESTS)

cov: install
	@-rm -rf ./lib-cov
	@$(JSCOVERAGE) ./lib ./lib-cov
	@CACHE_SKIN_COV=1 $(MOCHA) --reporter html-cov > ./coverage.html

.PHONY: test install
