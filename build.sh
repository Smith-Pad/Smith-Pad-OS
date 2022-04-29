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

function cleanup() {
	cd archiso
	sudo rm -rf base._cleanup_pacstrap_dir                          
	sudo rm -rf base._make_bootmode_bios.syslinux.eltorito          
	sudo rm -rf build._build_buildmode_iso
	sudo rm -rf base._make_bootmode_bios.syslinux.mbr               
	sudo rm -rf build_date
	sudo rm -rf base._make_bootmode_uefi-x64.systemd-boot.eltorito  
	sudo rm -rf base._make_bootmode_uefi-x64.systemd-boot.esp       
	sudo rm -rf efiboot.img
	sudo rm -rf base._make_boot_on_iso9660                          
	sudo rm -rf iso/
	sudo rm -rf base._make_custom_airootfs                          
	sudo rm -rf iso._build_iso_image
	sudo rm -rf base._make_customize_airootfs                       
	sudo rm -rf iso.pacman.conf
	sudo rm -rf base._make_packages                                 
	sudo rm -rf base._make_pacman_conf                              
	sudo rm -rf base._make_pkglist                                  
	sudo rm -rf base._make_version                                  
	sudo rm -rf base._mkairootfs_squashfs
}


generateISO
cleanup
