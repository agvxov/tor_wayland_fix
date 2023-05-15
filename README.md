# Tor wayland fix
Plug'n'play solution for this issue:
https://gitlab.torproject.org/tpo/applications/tor-browser/-/issues/40693

-where wayland is required as a gotcha dependency. This bug is mostly relevant on Gentoo system and has been neglected for years now.

### Usage
 1. Clone the repo into your tor installation, right by the "start-tor-browser.desktop" file.
 2. Invoke make:

 	$ make
 3. Start tor using the fixed launcher using the patch

 	./start-tor-browser.fix.desktop
