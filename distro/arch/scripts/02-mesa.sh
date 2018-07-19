#!/bin/bash

source $SCRIPT_DIR/functions.sh

git clone git://anongit.freedesktop.org/mesa/mesa $OUTPUT_DIR/mesa

m_success "Mesa successfully cloned"

cd $OUTPUT_DIR/mesa
ls
./autogen.sh \
	--with-sysroot=$ROOTFS_DIR \
	--without-dri-drivers \
	--disable-gallium-llvm \
	--enable-gbm \
	--enable-egl \
	--with-platforms=drm,x11,wayland \
	--enable-gles1 \
	--enable-gles2 \
	--enable-opengl \
	--enable-osmesa \
	--enable-shared-glapi \
	--enable-dri3 \
	--enable-glx \
	--enable-glx-tls \
	--enable-texture-float \
	--disable-libunwind \
	--with-gallium-drivers=tegra,nouveau
make
