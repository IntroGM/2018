# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SPHINXPROJ    = IntroGM
SOURCEDIR     = source
BUILDDIR      = _build

GH_PAGES_SOURCES = source Makefile

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Build for GitHub Pages
gh-pages:
	git checkout gh-pages
	rm -rf _build _sources _static
	git checkout master $(GH_PAGES_SOURCES)
	git reset HEAD
	make html
	# Build twice in case plots, etc. are produced by inline code
	make html
	# mv doesn't work nicely with subdirectories, using cp -r instead
	#mv -fv source/_build/html/* source/_build/html/.nojekyll ./
	cp -rv _build/html/* _build/html/.nojekyll ./
	rm -rf $(GH_PAGES_SOURCES)
	git add -A
	git commit -m "Generated gh-pages for `git log master -1 --pretty=short --abbrev-commit`" && git push origin gh-pages ; git checkout master

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
