#!/bin/bash

#Script used to simulate suspicious activity in your Filebeats data

#Prompt the user for desired loop count
echo "How many times should ssh loop? ~10 should be fine, enable Stream Live on Log page"

#Accept user number into a variable called input
read input

#Loop continues as long as user input is greater than 0
while [ $input -gt 0 ]
do
        #run ssh in quiet mode
        ssh -q RedAdmin@10.0.0.5
        ssh -q RedAdmin@10.0.0.6

        #reduce user input by one each time ssh runs
        input=$(($input - 1))
done

#Reassure the user that everything is ok
echo "Loop finished, check Logs"