#Rotten-tomatoes

##copy and paste this to clone the repo
####

git clone "https://github.com/u2prakash/rotten-tomatoes.git"

#####
##Run the Script to run in terminal
#######

bash movies-rating.sh

######
to build the Dockerfile
#####
docker build -t  prakash:v1 .
#####
# to run the image in attach mode
docker run -it prakash:v1
####
