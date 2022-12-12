build:
	if ! [ -d "build" ]; then \
		mkdir build; \
	fi
	
	cd build && \
	cmake .. -G Ninja && \
	ninja

	echo "build success" 
	echo "output : ./build/chacha"
