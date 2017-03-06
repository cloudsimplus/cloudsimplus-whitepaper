SOURCE=index.adoc
TARGET=cloudsim-plus-cloudforum
all: html pdf

install:
	#Install bundler, that in turn downloads Ruby dependencies inside the Gemfile: http://bundler.io
	sudo gem install bundler
	#Install build dependencies using Bundler
	bundler

html:
	asciidoctor -a allow-uri-read -b html5 "$(SOURCE)" -o "$(TARGET).html"

pdf:
	asciidoctor-pdf -a allow-uri-read "$(SOURCE)" -o "$(TARGET).pdf"

clean:
	rm -f "$(TARGET).html" "$(TARGET).pdf"
	