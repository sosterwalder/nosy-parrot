.PHONY: doc doc-watch

doc:
	make -C doc/ html

doc-watch:
	sphinx-autobuild -b html doc/ doc/_build/html
