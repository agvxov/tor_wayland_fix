master: patch launcher

launcher:
	m4 start-tor-browser.fix.desktop.m4 > start-tor-browser.desktop

patch:
	cc -shared -o shim.so shim.c
