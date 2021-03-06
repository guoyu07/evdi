#
# Copyright (c) 2015 DisplayLink (UK) Ltd.
#

FLAGS=-Werror -Wextra -Wall

all:
	CFLAGS="$(FLAGS)" $(MAKE) -C module $(MFLAGS)
	CFLAGS="-I../module $(FLAGS) $(CFLAGS)" $(MAKE) -C library $(MFLAGS)

clean:
	$(MAKE) clean -C module $(MFLAGS)
	$(MAKE) clean -C library $(MFLAGS)

