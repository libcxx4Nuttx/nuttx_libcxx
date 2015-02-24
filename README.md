# nuttx_libcxx
Top level structure to port libc++ to Nuttx 

N.B. for libcxx master is the upstream master 
Work will be done on the branch nuttx_libcxx 
The submodule update will checkout a commit on the nuttx_libcxx
branch

N.B. for Nuttx master is the upstream master 
Work will be done on the branch libcxx 
The submodule update will checkout a commit on the libcxx
branch

```
git clone https://github.com/libcxx4Nuttx/nuttx_libcxx.git
cd nuttx_libcxx/
git submodule init
git submodule update
```
N.B. Nuttx must be built first to have the 
NuttX libs avaiable for the Cmake cross compile 
set up of libcxx

```
cd NuttX/nuttx
make distclean; cd tools;./configure.sh px4fmu-v2/nsh; cd ..
make export

cd ../../libcxx
mkdir build && cd build
cmake -DCMAKE_TOOLCHAIN_FILE=../../Toolchian-cc-arm-none-eabi-4_8-2014q3.cmake  -DLIT_EXECUTABLE=../llvm/utils/lit/lit.py ..  
```
Or use To dump some useful Cmake Confiurations Variable' value

```
cmake -DCXX_DUMP=1 -DCMAKE_TOOLCHAIN_FILE=../../Toolchian-cc-arm-none-eabi-4_8-2014q3.cmake  -DLIT_EXECUTABLE=../llvm/utils/lit/lit.py ..  
```

