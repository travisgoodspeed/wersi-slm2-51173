Howdy y'all,

Wersi is a German manufacturer of electronic organs and pianos.  Their
antique SL-M2 NR.51173 module contains two Zilog Z0861112PSC
microcontrollers with programs in diffusion ROM.  My buddy David
Ryskalczyk politely asked me to photograph that ROM for extraction,
and this repo contains the partial result.

The ROM is advertised as 4kB, but it is arranged as 130 rows and 256
columns totaling 33,280 bits.  The extra 512 bits hold a test ROM that
is independent of the application.  This test ROM is documentation by
Zilog.

To edit the bit markings, simply open `rom10x.bmp` in [Mask ROM
Tool](https://github.com/travisgoodspeed/maskromtool/).  `make
rom10x.txt` will produce an ASCII art of the bits in physical order.

We don't yet know the proper decoding into physically ordered bytes,
but it's possible that the
[GatoROM](https://github.com/travisgoodspeed/maskromtool/blob/master/GATOREADME.md)
program can solve the ordering or be extended to support it.  It's
also possible that GatoROM and MaskRomTool will need to be extended
with support for Z8's format.

If you figure out the bit ordering, or if you happen to have
implemented the electronic backdoor method of dumping the ROM, please
get in touch.

Happy hunting,

--Travis Goodspeed

