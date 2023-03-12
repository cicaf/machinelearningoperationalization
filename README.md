##< Project Overview> . [![made-with-python](https://img.shields.io/badge/Made%20with-Python-1f425f.svg)](https://www.python.org/) [![CircleCI](https://dl.circleci.com/status-badge/img/gh/cicaf/machinelearningoperationalization/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/cicaf/machinelearningoperationalization/tree/main)

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks
Project Overview:

We will operationalize a pre-trained sklearn model that can predict housing prices in Boston. We will use Kubernetes to automate the management of containerized applications. Our goal is to create a Docker image of the application and deploy it to a Kubernetes cluster.

Task 1: Testing the project code using linting
We will use a linter, Hadolint, to ensure that our code follows best practices and is free of errors. We will run the linter with the following command:
make lint

Task 2: Completing a Dockerfile to containerize the application
We will create a Dockerfile that specifies the environment and dependencies needed to run the application. The Dockerfile will be used to build a Docker image of the application. We will use the following command to build the Docker image:./run_docker.sh

Task 3: Deploying the containerized application using Docker and making a prediction
We will use the Docker image we built in the previous step to run the containerized application. We will use the following command to start the container:./run_docker.sh
Once the container is running, we can make a prediction using the following command:./make_prediction.sh

Task 4: Improving the log statements in the source code for the application
We will improve the log statements in the source code for the application to make it easier to debug and monitor. We will update the code and rebuild the Docker image using the following command:

./run_docker.sh

Task 5: Configuring Kubernetes and creating a Kubernetes cluster
We will configure Kubernetes locally and create a Kubernetes cluster using the following command:
./run_kubernetes.sh

Task 6: Deploying a container using Kubernetes and making a prediction
We will deploy the containerized application to the Kubernetes cluster using the following command:
./run_kubernetes.sh
Once the container is running, we can make a prediction using the following command:
./make_prediction.sh

Task 7: Uploading a complete Github repo with CircleCI to indicate that the code has been tested
We will upload the code to a Github repository and configure CircleCI to test the code whenever changes are made to the repository. We will use the following command to push the code to Github:
git push origin master
We will use the following command to configure CircleCI:


You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

REPO:
*docker_out.txt and kubernetes_out.txt in the Output Folder.
*.circleci folder is included in the Github repository. The directory holds a config.yml
*Add an additional logging statement to app.py that prints as “info” the output prediction for some given input data. 
*The README file includes a summary of the project, how to run the Python scripts and web app, and an explanation of the files in the repository. 
*Both the Dockerfile and the python file pass linting using pylint and hadolint. This may involve selectively customizing lint overrides in both tools. The lint should be run for both tools via the command make lint. Circleci build server validates step.
*The Dockerfile should create a working directory, install the necessary dependencies, expose port 80, and specify that app.py run at container launch.
*Dockerfile passes linting via a Makefile
*Build, list, and run steps are completed in run_docker.sh. 
*This script runs a docker image with kubernetes, lists the kubernetes pod(s), and forwards the container port to a host, using kubectl appropriately.
