#! /bin/bash

./stages/00_create_users.sh
./stages/01_install_packages.sh
./stages/02_configure_lightdm.sh
# ./stages/shutdown.sh