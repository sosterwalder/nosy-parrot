.PHONY: doc doc-watch gh-pages test

OS := $(OS)

ifndef $(OS)
	PLANTUML := plantuml
else
	PLANTUML := plantuml.exe
endif

doc:
	$(info Building doc)
	cd docs/ && $(PLANTUML) source/.
	cd docs/ && make html

doc-watch:
	sphinx-autobuild -b html docs/ docs/_build/html

gh-pages:
	git checkout gh-pages
	rm -rf docs/build
	git checkout master docs Makefile
	git reset HEAD
	cd docs/ && $(PLANTUML) source/.
	cd docs/ && make html
	mv -fv docs/build/html/* ./
	rm -rf docs Makefile
	git add -A
	git commit -m "Generated gh-pages for `git log master -1 --pretty=short --abbrev-commit`" && git push origin gh-pages ; git checkout master
