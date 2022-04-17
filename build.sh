#########################################################################
#			build.sh
#
#		Script to make building images easier
#
#
#########################################################################



## Generates the ISO Image

function generateISO() {
	mkarchiso -v -w /tmp/Smith-Pad-OS-tmp/ archiso/
}


## This removes the temporary files that were created
## during the ISO image creation process.

function deleteTempFiles() {
	sudo rm -rf /.-w/
	sudo rm -rf work
}



generateISO
deleteTempFiles
