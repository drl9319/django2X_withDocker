# django2X_withDocker
This repository have a docker container for run django 2X with a SQLlite DB

## Pre-requirements

1.  Python
1.  Install VirtualBox
1.  Install Docker
1.  Install Docker Machine

## Work with the project

1.  **Create a Docker Machine**: sudo docker-machine create default
1.  **Build the image**: sudo docker build -t django2x_withdocker .
1.  **Run the image**: sudo docker run -p 8000:8000 -t -i -v /your_local_folder:/my_application django2x_withdocker /bin/bash

The last command run a cmd in the docker, you can use all the commands like, ls, cd, python ... like in the host Machine

In this comand line type:
1.  cd /my_application
1.  python manage.py runserver 0.0.0.0:8000

Now, if you type http://localhost:8000 in your browser, the django application is running.


## Util Commands

*   **Build new image**: sudo docker build -t django2x_withdocker .
*   **Re-Build image**: sudo docker build --no-cache -t django2x_withdocker .
*   **Docker image list**: sudo docker image ls
*   **Run Docker image**: In django2X_withDocker directory run: sudo docker-compose up
*   **Use local folder in your Docker container** :sudo docker run -t -i -v /your_url:/my_application ubuntu /bin/bash
