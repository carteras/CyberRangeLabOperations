#! /bin/bash

# Flash the main hard drive with the disk image
curl http://10.137.137.2/cros.img.gz | gunzip -c | dd of=/dev/sda status=progress