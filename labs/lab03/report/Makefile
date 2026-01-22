all:
	quarto render report.md
	cp _output/report.pdf . 2>/dev/null || true
	cp _output/report.docx . 2>/dev/null || true

clean:
	rm -rf _quarto _book _site _output
	rm -f report.pdf report.docx
