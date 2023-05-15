#!/usr/bin/env ./Browser/execdesktop
#
# This file is a self-modifying .desktop file that can be run from the shell.
# It preserves arguments and environment for the start-tor-browser script.
#
# Run './start-tor-browser.desktop --help' to display the full set of options.
#
# When invoked from the shell, this file must always be in a Tor Browser root
# directory. When run from the file manager or desktop GUI, it is relocatable.
#
# After first invocation, it will update itself with the absolute path to the
# current TBB location, to support relocation of this .desktop file for GUI
# invocation. You can also add Tor Browser to your desktop's application menu
# by running './start-tor-browser.desktop --register-app'
#
# If you use --register-app, and then relocate your TBB directory, Tor Browser
# will no longer launch from your desktop's app launcher/dock. However, if you
# re-run --register-app from inside that new directory, the script
# will correct the absolute paths and re-register itself.
#
# This file will also still function if the path changes when TBB is used as a
# portable app, so long as it is run directly from that new directory, either
# via the shell or via the file manager.
define(NL, `
')dnl
define(`PWD', translit(esyscmd(`pwd'), NL))dnl

[Desktop Entry]
Type=Application
Name=Tor Browser
GenericName=Web Browser
Comment=Tor Browser is +1 for privacy and −1 for mass surveillance
Categories=Network;WebBrowser;Security;
Exec=env LD_PRELOAD=PWD/shim.so sh -c '"PWD/Browser/start-tor-browser" --detach || ([ !  -x "PWD/Browser/start-tor-browser" ] && "PWD/Browser/start-tor-browser" --detach)' dummy %k
X-TorBrowser-ExecShell=env LD_PRELOAD=PWD/shim.so ./Browser/start-tor-browser --detach
Icon=PWD/Browser/browser/chrome/icons/default/default128.png
StartupWMClass=Tor Browser
