#
# Main Makefile for WiRouter KeyRec 
# Copyright (C) 2010-2011 Salvatore Fresta aka Drosophila
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of  the  GNU General Public License
# as published by the  Free Software Foundation; either version
# 2 of the License, or (at your option) any later version.
#
# This program  is  distributed  in the hope  that  it  will be
# useful, but WITHOUT ANY WARRANTY;  without  even the  implied
# warranty  of  MERCHANTABILITY  or  FITNESS  FOR  A PARTICULAR
# PURPOSE. See the GNU General Public License for more details.
#
# You should have  received a copy  of  the  GNU General Public
# License along  with  this program;  if not, write to the Free
# Software Foundation,Inc., 59 Temple Place, Suite 330, Boston,
# MA 02111-1307 USA
#
# http://www.gnu.org/licenses/gpl-2.0.txt


CONF_FILE   = config/agpf_config.lst config/teletu_config.lst
SCRIPT_DIR  = ./scripts/
SCRIPT_FILE = wr_iwlist.sh
SOURCE      = src/wirouterkeyrec.c src/agpf.c src/sha256.c src/md5.c src/hashword.c src/pirelli.c src/telsey.c src/socket.c src/sha1.c src/netopia.c src/teletu.c
EXEC        = wirouterkeyrec
LIBS        =
LDFLAGS     = 
CFLAGS      = -O2 -Wall -Wextra
DEBUG       = -g -ggdb
BUILD_DIR   = ./build/
CONF_DIR    = etc/
BIN_DIR     = usr/bin/

wirouterkeyrec:
	$(CC) $(LIBS) $(LDFLAGS) $(SOURCE) $(CFLAGS) -o $(BUILD_DIR)$(EXEC)

debug:
	$(CC) $(LIBS) $(SOURCE) $(CFLAGS) $(DEBUG) -o $(BUILD_DIR)$(EXEC)

install:
	@mkdir -p $(DESTDIR)/$(CONF_DIR)$(EXEC)
	@mkdir -p $(DESTDIR)/$(BIN_DIR)
	install $(BUILD_DIR)$(EXEC) $(DESTDIR)/$(BIN_DIR)$(EXEC)
	install $(SCRIPT_DIR)$(SCRIPT_FILE) $(DESTDIR)/$(BIN_DIR)
	install $(CONF_FILE) $(DESTDIR)/$(CONF_DIR)$(EXEC)
	@chmod 755 $(DESTDIR)/$(BIN_DIR)$(EXEC)
	@chmod 755 $(DESTDIR)/$(BIN_DIR)$(SCRIPT_FILE)

uninstall:
	@rm -rf $(DESTDIR)/$(CONF_DIR)$(EXEC)
	@rm -f $(DESTDIR)/$(BIN_DIR)$(EXEC)
	@rm -f $(DESTDIR)/$(BIN_DIR)$(SCRIPT_FILE)

clean:
	@rm -f $(BUILD_DIR)$(EXEC)
	@rm Makefile
	@rm config.log
	@rm config.h
	@rm config.status

upgrade: uninstall install

.PHONY: wirouterkeyrec debug install uninstall upgrade clean
