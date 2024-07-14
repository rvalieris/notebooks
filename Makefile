
all:
	jupyter-book build .

clean:
	rm -rf _build
	git clone https://github.com/rvalieris/notebooks/ -b gh-pages _build/html

