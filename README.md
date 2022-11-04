#  quasarContainerM1

docker Container to dev under MacBook Pro M1

This container gives You an alpne M1 image aunder M1.

##  Motivation
The motivation to build this container is that it is not possible to install orbit-db from npm under M1 because of a bug :

https://github.com/node-webrtc/node-webrtc/issues/680

npm install orbit-db does not work under M1 but in this container.

### Build and run

Build the container with :
 docker build -t web3 .

there is a file devcon . Put this somewhere in the path and adopt it to your needs.

The image has node and quasar in it but you can use it for a lot of other task, where you need Linux ander M1 





