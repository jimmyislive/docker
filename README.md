docker
======

Sample Dockerfile. This will create a container that is:

1. Based on ubuntu 14.04
2. Has python / pip / virtualenv installed
3. A user called 'deployment' for users to work as

Run it like:

 docker run -t -i jimmyislive/base:v3 /bin/bash
 
To build a new container using this Dockerfile:

  docker build -t <your-user-name>/<some-name>:<tag> .

