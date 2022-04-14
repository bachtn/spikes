
.PHONY: install-dependencies  ## ⏬ install production dependencies
install-dependencies:
	pip install -r requirements.txt

.PHONY: install-dev-dependencies  ## 🧪 install all dependencies (dev and production)
install-dev-dependencies:
	$(MAKE) dependences && pip install -r requirements-dev.txt

.PHONY: lint  ## ✅ check if coding style respect the PEP8 standards
lint:
	flake8

.PHONY: tests  ## ✅ launch all tests
tests:
	$(MAKE) unit-tests

.PHONY: unit-tests  ## ✅ launch unit tests
unit-tests:
	python -m pytest --cov=formation_indus_ds_avancee/ tests/test_unit/ -vv -p no:warnings
