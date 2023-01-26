#!/bin/bash
# Lab 6.2: Globbing
# Date: 2023 Jan 22
# Github: https://github.com/UODA-CSE/cse407l_unix-lab

#What is Globbing?
#Globbing is a process of matching a set of files with a pattern.

#Example-1: Globbing with ?
echo "Example-1: Globbing with ?"
echo "List of files in current directory"
ls -l
echo "List of files in current directory with ?"
ls -l ?

#Example-2: Globbing with *
echo "Example-2: Globbing with *"
echo "List of files in current directory with *"
ls -l *

#Example-3: Globbing with * and ? with extension
echo "Example-3: Globbing with * and ? with extension"
echo "List of files in current directory with * and ? with extension"
ls -l *.?
ls -l *.docx
