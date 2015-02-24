INCLUDE(CMakeForceCompiler)
 
SET(CMAKE_SYSTEM_NAME Generic)
SET(CMAKE_SYSTEM_VERSION 1)

# look for CMAKE_SYSTEM_NAME-compiler-CMAKE_SYSTEM_PROCESSOR.cmake 
SET(CMAKE_SYSTEM_PROCESSOR stm32f427) 

# specify the cross compiler
CMAKE_FORCE_C_COMPILER(arm-none-eabi-gcc GNU)
CMAKE_FORCE_CXX_COMPILER(arm-none-eabi-g++ GNU)

# where is the target environment 
SET(CMAKE_FIND_ROOT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../../../../NuttX/nuttx)

# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)


SET(COMMON_FLAGS "-mcpu=cortex-m4 -mthumb -march=armv7e-m -mfpu=fpv4-sp-d16 -mfloat-abi=hard")
SET(CMAKE_CXX_FLAGS "${COMMON_FLAGS}")
SET(CMAKE_C_FLAGS "${CMAKE_CXX_FLAGS}")
set(CMAKE_EXE_LINKER_FLAGS "-Wl,-gc-sections ")
set(TOOLCHAIN_INCLUDE_DIR /home/david_s5/gcc-arm-none-eabi-4_8-2014q3/arm-none-eabi/include)
