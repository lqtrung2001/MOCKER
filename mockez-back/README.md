### SETUP ENVIRONMENT USING DOCKER AND POSTGRESQL DATABASE

#### 1. Understanding the Docker and the PostgreSQL Database

* **What is Docker?**

Developed by Solomon Hykes in 2013, Docker is an Open-Source software tool that allows you to quickly build, test, manage, and deploy applications. It carries multiple containers that comprise all executable packages and dependencies required to run an application. Docker Containers are built using Docker Images, a template that comprises all the parameters and instructions required to run a particular application.

You can access different Docker Containers by signing up on an online cloud repository called Docker Hub. From the Docker Hub, you can easily pull or download pre-configured Docker Containers, like Docker PostgreSQL Container to execute specific applications based on your requirements.

If you are a software developer, you can also upload and share your own applications in the form of Docker images that can be used by other Docker users to try and execute your application.

* **PostgreSQL**

Developed in the late 1980s, PostgreSQL is an Open-Source Relational Database Management System (RDBMS) with more than 30 years of active development history. Although PostgreSQL has object-oriented features for handling unstructured data, it is widely used as a Relational Database.

PostgreSQL supports both SQL and JSON to implement relational and non-relational queries on data present inside databases. In other words, with PostgreSQL, you can write SQL commands to process data present in tables that belong to the respective database servers. Because of its vast features and functionalities, PostgreSQL is reportedly ranked 4th among the most popular databases worldwide.

In case, if your website or application uses lots of reading queries, we recommend you replicate your primary database (Master-Slave Replication).

#### 2. Installing docker desktop or docker in wsl

For Docker Desktop: https://www.docker.com/products/docker-desktop/

For Docker in wsl(2) or linux: https://docs.docker.com/desktop/windows/wsl/


#### 3. Setup PostgreSQL Database

* Run docker.

`sudo service docker start`

* Open a new command window, and run the command given below.

`docker pull postgres`

* To obtain the list of existing Docker Images, run the following command.

`docker images`

* In the next step, you can enter the command you copied from the Docker Hub in the Command Prompt.

`docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres`

* The above-given command should be customized and added with the necessary parameters to work properly for setting up PostgreSQL on Docker.

`docker run --name postgresql -e POSTGRES_USER=myusername -e POSTGRES_PASSWORD=mypassword -p 5432:5432 -v /data:/var/lib/postgresql/data -d postgres`

* In the command given above,
1. `PostgreSQL` is the name of the Docker Container. 
2. `-e POSTGRES_USER` is the parameter that sets a unique username to the Postgres database.
3. `-e POSTGRES_PASSWORD` is the parameter that allows you to set the password of the Postgres database.
4. `-p 5432:5432` is the parameter that establishes a connection between the Host Port and Docker Container Port. In this case, both ports are given as 5432, which indicates requests sent to the Host Ports will automatically redirect to the Docker Container Port. In addition, 5432 is also the same port where PostgreSQL will be accepting requests from the client.
5. `-v` is the parameter that synchronizes the Postgres data with the local folder. This ensures that Postgres data will be safely present within the Home Directory even if the Docker Container is terminated.
6. `-d` is the parameter that runs the Docker Container in the detached mode, i.e., in the background. If you accidentally close or terminate the Command Prompt, the Docker Container will still run in the background.
7. `postgres` is the name of the Docker image that was previously downloaded to run the Docker Container.
8. Now, execute `docker ps -a` to check the status of the newly created PostgreSQL container.

On executing the command, you get the output, as shown in the above image. It shows that Docker Container is running successfully on port 5432. You can start and stop the newly created Docker Container by running the following commands.

* For starting the Docker Container:

`docker start postgresqldb`

* For stopping the Docker Container:

`docker stop postgresqldb`

* You can install PGAdmin for connect with PostgreSQL:

https://hevodata.com/learn/docker-postgresql/#:~:text=the%20PostgreSQL%20Environment.-,Step%203%3A%20Install%20PGAdmin%20on%20Docker,-At%20this%20stage

#### REFERENCE:

[1] PostgreSQL with Docker Setup, https://www.baeldung.com/ops/postgresql-docker-setup.

[2] 3 Easy Steps to Install Docker PostgreSQL Environment, https://hevodata.com/learn/docker-postgresql/.