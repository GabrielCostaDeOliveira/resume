TEXFILE=./src/resume.tex

.PHONY: all br en clean

all: br

br:
	sed -i 's/lang *= *".*"/lang = "br"/' $(TEXFILE)
	lualatex -jobname=br_resume -output-directory=./output $(TEXFILE)

en:
	sed -i 's/lang *= *".*"/lang = "en"/' $(TEXFILE)
	lualatex -jobname=en_resume -output-directory=./output $(TEXFILE)
