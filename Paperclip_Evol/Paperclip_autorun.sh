#!/bin/bash

## Created by: Ryan T Debolt
## Created on: 30/7/2020
## Created for: GENETIS Reaserch group at Ohio State University

## Description: 
## This is a script designed to run paperclips, and all affiliated scripts, and then store the data in directories in mass.
## Using user inputs the script will do may runs of paperclips at a time to obtain  large amounts of data as fast as possible for testing and refining the paperclip algorithm

## Algorithm:
##
## Variables
Gen=100
mut=15
sigma=.01
frac=10
count=0
## Enter the naming scheme for files

name="autorun"

## LOOPS ("{,}" denotes that one loop is nested

## inividuals sent to either selection method (0-10), incriment by integers
## {
##  mutation rates (0.0 - 1.0) incriment by .01
##  {
##   standard deviation (0.0 - pi) incriment by .001
##   {
##    how many runs of this type will be done (user input)
##    {
##    call paperclips and enter the current inputs
##    call paperclips_data to create the graph of the run
##    move all txt, csv and png files into a results directory
##    (store high sitness score and run identity and output to a file???)
## }}}}
for i in `seq 0 $frac` 
do
    sigma=10
    for j in `seq 1 $sigma`
    do
	run=10
	for k in `seq 1 $run`
	do
	    echo $Gen $name$i.$j.$k 1 $mut $j $i| ./a.out
	    mv Run_$name$i.$j.$k.txt Auto_Results
	    mv Run_$name$i.$j.$k.csv Auto_Results  
	done
    done 
done

## enjoy your results