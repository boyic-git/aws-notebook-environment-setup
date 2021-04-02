#!/bin/bash

pip3 install kaggle==1.5.6 --user

pip3 install wandb --user

sudo ln -s ~/.local/bin/kaggle /usr/bin/kaggle

sudo ln -s ~/.local/bin/wandb /usr/bin/wandb

jupyter notebook --generate-config

sudo cp aws-notebook-environment-setup/jupyter_notebook_config.py  /home/ubuntu/.jupyter/

sudo cp aws-notebook-environment-setup/jupyter_app.conf /etc/nginx/sites-available/

sudo ln -s /etc/nginx/sites-available/jupyter_app.conf /etc/nginx/sites-enabled/jupyter_app.conf

sudo rm /etc/nginx/sites-enabled/default

sudo systemctl daemon-reload

sudo systemctl reload nginx

sudo cp aws-notebook-environment-setup/my_jupyter.conf /etc/supervisor/conf.d/

sudo mkdir /var/log/my_jupyter

sudo supervisorctl reread

sudo supervisorctl update
