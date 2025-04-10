#!/usr/bin/env bash
##
## EPITECH PROJECT, 2024
## skip-synthesis.sh
## File description:
## Requierement script
##

if [ $# != 1 ]
then
    printf $0, "Error: %s, argument invalid."
else
    gawk '{print $3, "\t", $9}' | grep \ $1
fi
