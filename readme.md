# about-this
Add internal-flash-storage into MachiKania type Z.
Size of flash-storage is about 80KiB.

## fat-image maker
See `./makefat`.

## build
compile these file with `-Os` option to save the flash memory.(Program memory is used for flash-storage). Link library of `-Os` partry.

## reference
[MachiKania type Z](http://www.ze.em-net.ne.jp/~kenken/machikania/typez.html)

## todo 
- add filer.
- add sd handler.
- refactor `ff_wrap.c`
