# Wow, Running Web Server In Android!!!!




# How to build? (For Android, In Linux)

```sh
$ git clone https://github.com/Piorosen/Restbed-based-Android-Web-Server
$ cd Restbed-based-Android-Web-Server
$ chmod +x bootstrap.sh
$ ./bootstrap
$ make build
```

# How to push executable file into android (Using ADB, In Linux)

```sh
$ adb devices | grep device
# default value: ./build/chacha, because project name is chacha.
# adb push ${executable file: chacha} /data/local/tmp
$ adb push chacha /data/local/tmp
$ adb shell chmod +x /data/local/tmp/chacha
$ adb shell /data/local/tmp/chacha
```

# How to `Test`? (Using curl, In Linux)

```sh
$ curl --request POST 'http://{Android IP Address}:1984/resource' \
    --data-raw 'test: android C++ server.'
```