############################################################
#		Smith-Pad-OS .zshrc config
#
#	This is not a regular .zshrc config. It is used 
#	for auto configuring the live environment
#
#
#
#
#
############################################################

function enablegui() {
	systemctl enable sddm
	systemctl start sddm		
}

function install() {
	echo "hello world"
}

enablegui
