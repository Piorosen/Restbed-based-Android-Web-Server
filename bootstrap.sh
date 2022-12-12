#!/bin/bash

sudo apt install unzip ninja-build cmake

git submodule update --init --recursive

mkdir components

wget "https://dl.google.com/android/repository/android-ndk-r25b-linux.zip?utm_source=developer.android.com&utm_medium=referral" -O components/android-ndk-r25b.zip

tar -zxvf components/android-ndk-r25b.zip -P components

echo "export PATH=$(pwd)/components/android-ndk-r25b/toolchains/llvm/prebuilt/linux-x86_64/bin:$$PATH" >> ~/.bashrc
