cmake_minimum_required(VERSION 3.5)

set(CMAKE_CXX_FLAGS "                   -Wall -Ofast -march=native -mtune=native -Wno-unknown-pragmas")
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -I/usr/local/opt/hackrf/include")            # HackRF
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -I/usr/local/Cellar/boost/1.74.0/include")   # Boost
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -I/usr/local/Cellar/uhd/4.0.0.0/include -Wno-#pragma-messages")    # UHD
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Rpass=loop-vectorize")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -I/usr/local/include")


# x86 part
set(CMAKE_EXE_LINKER_FLAGS "-L/usr/local/lib") # UHD
#set(CMAKE_EXE_LINKER_FLAGS "                          /usr/local/lib/libboost_filesystem-mt.dylib") # UHD
#set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /usr/local/lib/libboost_system-mt.dylib") # UHD
#set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /usr/local/opt/hackrf/lib/libhackrf.a") # UHD
#set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /usr/local/opt/libusb/lib/libusb-1.0.a") # UHD
#set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /usr/local/Cellar/uhd/4.0.0.0/lib/libuhd.dylib") # UHD
#set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -framework CoreFoundation -framework IOKit") # UHD
#set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -lncurses") # UHD
#set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -L/usr/local/lib -lSoapySDR") # SoapySDR

set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -luhd") # UHD
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -lhackrf") # UHD
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -lSoapySDR") # SoapySDR

set(CMAKE_CXX_STANDARD 17)
 
########################################################################################################################

project(test_QPSK)

SET(SOURCE_FILES


        src/test_qpsk.cpp
        )

add_executable(test_vecto ${SOURCE_FILES})

########################################################################################################################
