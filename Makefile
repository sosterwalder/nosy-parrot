.PHONY: doc doc-watch gh-pages

doc:
	make -C docs/ html

doc-watch:
	sphinx-autobuild -b html docs/ docs/_build/html

gh-pages:
	git checkout gh-pages
	rm -rf docs/build
	git checkout master docs Makefile
	git reset HEAD
	cd docs/ && make html
	mv -fv html/* ../
	rm -rf docs Makefile
	git add -A
	git commit -m "Generated gh-pages for `git log master -1 --pretty=short --abbrev-commit`" && git push origin gh-pages ; git checkout master
