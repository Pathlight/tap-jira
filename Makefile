.PHONY: test
test:
	pylint tap_jira -d missing-docstring,invalid-name,line-too-long,too-many-locals,too-few-public-methods,fixme,stop-iteration-return,too-many-branches,useless-import-alias,no-else-return,logging-not-lazy  || exit 0
	pytest tests/unittests
