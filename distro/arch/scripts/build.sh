#!/bin/bash

export SCRIPT_DIR=$(dirname $0)
( 
	bash "$SCRIPT_DIR/_setup.sh" $@ 
)
