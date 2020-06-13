#!/bin/bash

sudo sed -i 's/, timestamp_timeout=-1/ /g' /etc/sudoers
sudo -k
