
all:
	jupyter-book build .

clean:
	rm -rf _build
	git clone --no-checkout https://github.com/rvalieris/notebooks/ -b gh-pages _build/html
	cd _build/html && git read-tree HEAD && git checkout .gitignore .nojekyll


