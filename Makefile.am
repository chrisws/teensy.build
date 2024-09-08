SUBDIRS = libs/cores/teensy3 libs/Audio libs/SD libs/SerialFlash libs/SPI libs/Wire libs/Bounce2 libs/TeensyThreads src

test:
	(cd src && make test)

pull:
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  (cd "$$subdir" && git pull); \
	done;

dbg:
	arm-none-eabi-addr2line -s -f -C -e $*
