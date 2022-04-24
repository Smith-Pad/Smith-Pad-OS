#########################################################################
#			build.sh
#
#		Script to make building images easier
#
#
#########################################################################



## Generates the ISO Image

function generateISO() {
	sudo mkarchiso -v -w archiso archiso/ archiso/
}



generateISO
