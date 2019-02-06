#!/bin/bash

mkdir training_data
curl -o training_data/satimgs.tgz https://raw.githubusercontent.com/jabhay/fastai/master/training_data/satimgs.tgz
tar xvzf training_data/satimgs.tgz -C training_data
cd courses/fast-ai/course-v3/
git pull
conda update conda
conda install -c fastai fastai
