#!/bin/bash

sudo sed -i 's/env_reset/env_reset, timestamp_timeout=-1/g' /etc/sudoers
