gcc src/wirouterkeyrec.c src/agpf.c src/sha256.c src/md5.c src/hashword.c src/pirelli.c src/telsey.c src/socket.c src/sha1.c src/netopia.c src/teletu.c -O2 -Wall -Wextra -lws2_32 -o wirouterkeyrec.exe
copy config\agpf_config.lst .
copy config\teletu_config.lst .