#!/bin/bash

apt-get remove xcowsay fortune-mod -y &&

sudo sed -i '/xcowsay/d' /root/.bashrc
