
REPO=$(shell git config --get remote.origin.url)

all:
	jupyter-book build .

clean: ghpages.git
	rm -rf _build
	mkdir -p _build/html
	./gg read-tree HEAD
	./gg checkout .nojekyll .gitignore

ghpages.git:
	git clone --bare $(REPO) -b gh-pages ghpages.git

