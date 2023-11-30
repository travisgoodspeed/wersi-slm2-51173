all: check


rom10x.txt: rom10x.bmp rom10x.bmp.json
	maskromtool rom10x.bmp -a rom10x.txt -platform offscreen -e
rom10x.bin: rom10x.txt
# This is a poor guess.  We'll need to try other arrangements.
	gatorom --flipx -i rom10x.txt --decode-cols-downr -o rom10x.bin
check: rom10x.bin
# We don't yet know the decoding, so this should fail.
	false

clean:
	rm -f rom10x.txt rom10x.bin
