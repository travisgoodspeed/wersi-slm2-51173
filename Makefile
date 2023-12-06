all: check


rom10x.txt: rom10x.bmp rom10x.bmp.json
	maskromtool rom10x.bmp -a rom10x.txt -platform offscreen -e
rom10x.bin: rom10x.txt
	gatorom rom10x.txt -o rom10x.bin --decode-z86x1 -r 0 
check: rom10x.bin
# We don't yet know the decoding, so this should fail.
	false

clean:
	rm -f rom10x.txt rom10x.bin
