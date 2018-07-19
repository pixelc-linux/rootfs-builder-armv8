#!/bin/bash

function usage {
	echo "Usage: $0 rootfs-output-dir";
}

if [ -z $1 ]; then
	usage;
	exit;
fi

export CURRENT_DIR=$(dirname $(readlink -f "$0"))
export ROOTFS_DIR=$(readlink -f "$1")/rootfs
export OUTPUT_DIR=$(readlink -f "$1")
export UTILITIES_DIR=$CURRENT_DIR/../utilities/

source "$CURRENT_DIR/functions.sh"

if [ -f $OUTPUT_DIR ]; then
	m_error "Error: Output dir is a file!";
	exit;
fi

if [ ! -d $OUTPUT_DIR ]; then
	m_error "Error: Output dir doens't exists";
	exit;
fi

if [ -f $ROOTFS_DIR ]; then
	echo "$ROOTFS_DIR already exists and is a file."
	exit;
fi

if [ ! -d $ROOTFS_DIR ]; then
	mkdir $ROOTFS_DIR;
fi

if [ -z $UTILITIES_DIR ]; then
	echo "Utilities not found!" > /dev/stderr
	exit;
fi

if [ ! -z $STAGE ]; then
	bash $CURRENT_DIR/$STAGE.sh
	exit;
fi

bash $CURRENT_DIR/00-bootstrap.sh
