#!/bin/bash

function m_info {
        echo -e "\e[34m\e[1m$1\e[0m\e[39m"
}
function m_info_sub {
        echo -e "\e[1m$1\e[0m"
}

function m_error {
	echo -e "\e[31m\e[1m$1\e[0m\e[39m"
}

function m_error_sub {
	echo -e "\e[31m$1\e[39m"
}

function m_success {
	echo -e "\e[92m\e[1m$1\e[0m\e[39m"
}

function m_success_sub {
	echo -e "\e[92m$1\e[39m"
}
