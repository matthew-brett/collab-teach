default: collab_teach_slides.pdf

%.pdf : %.md
	pandoc --filter pandoc-citeproc -t beamer -s $< -o $@

clean:
	rm *.pdf *.html
