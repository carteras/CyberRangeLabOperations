
# This Makefile streamlines the process of making and deleting the .iso file that we are loading onto the 

PWD = /home/johndoe/CyberRangeLabOperations/toolchain

# 'archbuild' builds our CROS Linux iso
archbuild:

	@echo "Building ISO..."
	mkdir test
	docker build --no-cache -t cros/mkarchiso .
	docker run --privileged -v $(PWD)/test:/root/odir cros/mkarchiso
	@echo "Done"

# 'targetbuild' boots up the template inside a QEMU VM and runs a wget cmd to get the build file off of the host machine
targetbuild:

	@echo "Booting Up..."

	mkdir build
	cp TARGET_deb/cros_template.img.gz build/cros.img.gz
	gunzip build/cros.img.gz
	qemu-system-x86_64 -hda build/cros.img -smp 6 -m 8G -net nic,model=rtl8139 -net user,hostfwd=tcp::2222-:22 &
	sleep 44

	mkdir build/build/
	cp -r TARGET_deb/stages build/build/
	cp TARGET_deb/TARGET_build.sh build/build/
	tar -cvf build/build.tar.gz build/build
	sudo cp build/build.tar.gz /var/www/html/

	sshpass -p root ssh root@127.0.0.1 -p 2222 "wget -O /root/build.tar.gz http://10.137.137.2/build.tar.gz && tar xf /root/build.tar.gz && cd /root/build/build/ && chmod +x TARGET_build.sh && chmod +x ./stages/* && ./TARGET_build.sh && shutdown -h +1"

# 'clean' wipes the iso off the computer
clean:

	@echo "Cleaning up..."
	sudo rm -rf test/
	sudo rm -rf build/
	sudo rm /var/www/html/build.tar.gz

	@echo "Done"
	

# What else do we want to in the Makefile??