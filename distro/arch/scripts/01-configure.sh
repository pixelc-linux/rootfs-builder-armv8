#!/bin/bash

source $CURRENT_DIR/functions.sh

m_info "Configuring..."

function cchroot {
	"$UTILITIES_DIR/install-scripts/arch-chroot" "$ROOTFS_DIR" $@
}


USER_USERNAME="pixelc"
USER_PASSWORD="pixelc"

m_info_sub "Adding $USER_USERNAME user"
cchroot useradd -m $USER_USERNAME

echo -e "$USER_PASSWORD\n$USER_PASSWORD" | cchroot passwd $USER_USERNAME

bash $SCRIPTS_DIR/02-build-mesa.sh
