##############################################################
##	create-development-environment.sh
##
##
##	Simple Script to generate and build a development
##	environment for many usages, such as developing
##	generating, and testing ISO Images
##
##############################################################

## Make a function that will create empty folders 
## before proceeding to the next following steps. 

function createFolders() {
	cd 						## Making sure it is located in the Home Directory
	mkdir Smith-Pad-OS-Development-Environment	## Create the first empty folder 
	cd Smith-Pad-OS-Development-Environment		## Go to the first empty folder 
	mkdir DEVELOPMENT				## Create another folder that contains the development files
	mkdir TESTING					## Create another folder that contains the Testing Files 
							## (Merged from DEVELOPMENT)
}


## Make a function that will create scripts for the 
## Smith-Pad-OS-Development-Environment. 

function createFiles() {
	## Go to the DEVELOPMENT directory
	cd DEVELOPMENT
	
	## Clone the Smith-Pad-OS Repository
	git clone https://github.com/Smith-Pad/Smith-Pad-OS


	## Go to the Smith-Pad-OS Repository that it is just cloned 
	cd Smith-Pad-OS


	## Copy archiso to TESTING to prevent conflicts when generating
	## iso image 
	
	cp -R archiso ../TESTING

	## Copy build.sh file to TESTING to prevent conflicts when generating
	## iso image 
	
	cp build.sh ../TESTING
	 
		
}

createFolders
createFiles
