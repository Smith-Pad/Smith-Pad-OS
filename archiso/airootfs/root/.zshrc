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
	systemctl enable lxdm
	systemctl start lxdm
}

function install() {
	echo "hello world"
}

enablegui
