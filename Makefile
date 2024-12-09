all: qrcode slides

qrcode: ./qrcode.sh
	./qrcode.sh

slides: ./slide-deck.md
	npx marp ./slide-deck.md -o ./docs/index.html

pdf: ./slide-deck.md
	npx marp ./slide-deck.md --pdf -o ./docs/local-ai.pdf

clean: ./slide-deck.html ./assets/qrcode.png
	rm -r ./docs/* ./assets/qrcode.png
