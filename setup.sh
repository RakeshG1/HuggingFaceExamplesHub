#!/bin/sh

# Conda Version
conda -V 

# List Existing Conda Environments in System
conda info --envs

# Update Conda
conda update conda

# Upgrade PIP
pip install --upgrade pip

# Remove Existing Old Env
conda env remove -n hugging_face_env

# Create Conda Environment
# Most of the hugging face codes works on python[3.11]
conda create --name hugging_face_env python=3.11 -y 

# Activate Conda Environment
conda activate hugging_face_env

# Install Python Packages
pip install -r requirements.txt

# Uninstall Python Packages
pip uninstall -r requirements.txt

# Check Python Libraries
conda list 
pip freeze

# Conda Env Export 
conda env export > hugging_face_env.yml

# Python Version
python --version

# Python Path
which python

# Deactivate Conda Environment
conda deactivate