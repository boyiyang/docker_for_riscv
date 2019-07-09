[]:depends on different user

===================================
=== Build image from dockerfile ===
===================================
#[image_name]: choose a name you like
#tag: use username to distinquish
#.: means present directory(if you want to build from other dockerfiles, change "." to -f /path to dockerfile)

> docker build -t [image_name:tag] .

=======================
=== Show all images ===
=======================
#check if your image has been built successfully

> docker images

=========================================
=== Run a container with a 4GB memory ===
=========================================
#4GB is changeable, it is safe to use 3GB+ memory
#[container_name]: easy to distinquish

> docker  run -it --memory 4GB --name [container_name] -d [image_name:tag]

===============================
=== Show all the containers ===
===============================
#check if the container has been run successfully and record its container ID

> docker ps

=====================================
=== Enter the specified container ===
=====================================

> docker exec -it [container_ID] bash

=======================
=== Leave container ===
=======================

> exit

=====================================
=== Start container(if necessary) ===
=====================================

> docker start [container_ID]

=======================================
=== Restart container(if necessary) ===
=======================================

> docker restart [container_ID]

=========================================
=== Copy files from container to host ===
=========================================
#example: docker cp container_for_riscv1:/home/rocket-chip/emulator/generated-src/freechips.rocketchip.system.DefaultConfig.v /home/byyang/riscv_docker

>#example: docker cp [container_name]:[object_file_path] [(host)destination_path] 
