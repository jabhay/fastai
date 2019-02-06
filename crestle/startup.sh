#!/bin/bash

# Obtain training data if it doesn't already exist
if [ ! -d "training_data" ]; then
    mkdir training_data
    curl -o training_data/satimgs.tgz https://raw.githubusercontent.com/jabhay/fastai/master/training_data/satimgs.tgz
    tar xvzf training_data/satimgs.tgz -C training_data
else
    echo "Training data already exists... if you want to restart from Github, delete the folder and re-run"
fi

# Get the latest version of the course work to the latest
cd courses/fast-ai/course-v3/
git pull

# Update Anaconda to the latest
conda update conda

# Update the Fast AI library to the latest
conda install -c fastai fastai
