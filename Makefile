SRC=article.tex

all: rules.tex
	latexmk $(SRC)
	#pdflatex $(SRC)

rules.tex:
	ott -i rules.ott -o rules.tex -tex_wrap false

cleaner:
	latexmk -C
	#rm *.log *.aux *.nav *.out *.snm *.toc

clean: cleaner
	rm -rf *.pdf rules.tex

clean_pdf:
	rm -rf *.pdf
