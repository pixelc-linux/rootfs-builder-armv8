ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

default: toolchain
	@mkdir -p ${ROOT_DIR}/out/rootfs
	${ROOT_DIR}/scripts/build.sh ${ROOT_DIR}/out/rootfs
utilities/install-scripts/pacstrap:
	cd ${ROOT_DIR}/utilities/install-scripts; make
toolchain: utilities/install-scripts/pacstrap
clean:
	@echo rm -rf ${ROOT_DIR}/out/

.PHONY: default clean
