all: qrcode slides

qrcode: ./qrcode.sh
	./qrcode.sh

slides: ./slide-deck.md
	npx marp ./slide-deck.md -o ./index.html

pdf: ./slide-deck.md
	npx marp ./slide-deck.md --pdf -o ./local-ai.pdf

clean: ./slide-deck.html ./assets/qrcode.png
	rm -r ./*.html ./*.pdf ./assets/qrcode.png
