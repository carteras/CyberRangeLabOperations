#! /bin/bash

useradd -m user

# oh no! insecure centralized authentication.
# CHANGE!!!!!!!!!!!
echo "user:user" | chpasswd