#!/bin/bash
#Author: Prakash Dahal
echo "Please enter the name of the valid Movie?"
read  movieName
#This will translate space to %2o so that movie name with space will run in browser
movieName1=$(echo ${movieName} | tr ' ' '/%20')
myApiKey=6b97b751
#This will translante all the comma to the new line and grep /10 and delete all other excpt rating
rating=$(curl -s "http://www.omdbapi.com/?t=${movieName1}&&apikey=${myApiKey} " | tr ',' '\n' | grep /10  | tr -d '}]Value:""' | head -1)
#This will display the rating statement
  echo "${movieName} Rating from Rotten tomato is ${rating}"
