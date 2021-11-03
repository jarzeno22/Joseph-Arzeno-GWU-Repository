#!/bin/bash

#Script used to simulate suspicious activity in your Metricbeat data

#Create a folder to hold wget files
mkdir ~/wget/holder

#Prompt the user for desired loop count
echo "How many times should wget loop? Think big, 1000+"

#Accept user number into a variable called input
read input

#Loop continues as long as user input is greater than 0
while [ $input -gt 0 ]
do
        #run wget in quiet mode, redirect output files to holder folder
        wget 10.0.0.5 -q -P ~/wget/holder/
        wget 10.0.0.6 -q -P ~/wget/holder/

        #reduce user input by one each time wget runs
        input=$(($input - 1))
done

#Recursively remove the folder holding generated logs
rm -r ~/wget/holder

#Reassure the user that everything is ok
echo "Loop finished and logs removed, check Metrics"