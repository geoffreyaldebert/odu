#!/bin/sh

#WORK_DIR=/home/jovyan/work
WORK_DIR=./tmp
CLONE_DIR=${WORK_DIR}/repo-git
COURSE_DIR=${CLONE_DIR}/france-relance
FORMATION_DIR=${WORK_DIR}/odu

# Clone course repository
REPO_URL=https://github.com/geoffreyaldebert/odu.git
git clone --depth 1 $REPO_URL $CLONE_DIR

# Convert .md to .ipynb
pip install python-frontmatter jupytext
python $CLONE_DIR/utils/md-to-ipynb.py france-relance/intro.md

# Put chapter data in the training dir
mkdir $FORMATION_DIR
cp france-relance/* ${FORMATION_DIR}/

# Give write permissions
chown -R jovyan:users $FORMATION_DIR/

# Install additional packages if needed
REQUIREMENTS_FILE=${FORMATION_DIR}/requirements.txt
[ -f $REQUIREMENTS_FILE ] && pip install -r $REQUIREMENTS_FILE && rm $REQUIREMENTS_FILE

# Remove course Git repository
rm -r $CLONE_DIR

# Open the relevant notebook when starting Jupyter Lab
echo "c.LabApp.default_url = '/lab/tree/formation/intro.ipynb'" >> /home/jovyan/.jupyter/jupyter_server_config.py
