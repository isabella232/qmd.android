LOCAL_PATH:= $(call my-dir)

############################################# 
include $(CLEAR_VARS)

LOCAL_SRC_FILES += \
	service/IMwtv3Service.cpp \
	service/Mwtv3Service.cpp

LOCAL_STATIC_LIBRARIES += \
	libbinder \
	libcutils \
	libutils \
	liblog

LOCAL_MODULE := libMwtv3service
LOCAL_MODULE_TAGS := optional

include $(BUILD_STATIC_LIBRARY)
############################################# 
include $(CLEAR_VARS)

LOCAL_SRC_FILES := client.cpp
LOCAL_STATIC_LIBRARIES += \
	libMwtv3service \
	libbinder \
	libcutils \
	libutils \
	liblog

LOCAL_MODULE := client
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
############################################# 
include $(CLEAR_VARS)

LOCAL_SRC_FILES := test.cpp
LOCAL_STATIC_LIBRARIES += \
	libMwtv3service \
	libbinder \
	libcutils \
	libutils \
	liblog

LOCAL_MODULE := test
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
############################################# 
include $(CLEAR_VARS)

LOCAL_SRC_FILES := broadcast.cpp
LOCAL_STATIC_LIBRARIES += \
	libMwtv3service \
	libbinder \
	libcutils \
	libutils \
	liblog

LOCAL_MODULE := broadcast
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
############################################# 
#include $(CLEAR_VARS)

#LOCAL_SRC_FILES += transcode.cpp

#LOCAL_SHARED_LIBRARIES += libRtkIpc
#LOCAL_SHARED_LIBRARIES += libstagefright
#LOCAL_SHARED_LIBRARIES += libstagefright_foundation
#LOCAL_SHARED_LIBRARIES += liblog
#LOCAL_SHARED_LIBRARIES += libutils
#LOCAL_SHARED_LIBRARIES += libbinder
#LOCAL_SHARED_LIBRARIES += libgui
#LOCAL_SHARED_LIBRARIES += libcutils
#LOCAL_SHARED_LIBRARIES += libui
#LOCAL_SHARED_LIBRARIES += libRtkTranscodePlayer
#LOCAL_SHARED_LIBRARIES += libmedia

#LOCAL_C_INCLUDES += frameworks/av/media/libstagefright
#LOCAL_C_INCLUDES += frameworks/native/include/media/openmax
#LOCAL_C_INCLUDES += frameworks/native/include
#LOCAL_C_INCLUDES += device/realtek/proprietary/libs/Include
#LOCAL_C_INCLUDES += device/realtek/proprietary/libs/transcode/
##LOCAL_C_INCLUDES += external/boringssl/src/include/
##LOCAL_C_INCLUDES += hardware/libhardware_legacy/include/

#LOCAL_CFLAGS += -Wno-multichar -Wno-unused-parameter

#LOCAL_MODULE_TAGS := debug eng

#LOCAL_MODULE:= transcode

#include $(BUILD_EXECUTABLE)
############################################# 
include $(CLEAR_VARS)

LOCAL_SRC_FILES := tx_main.cpp 
LOCAL_SRC_FILES += wifi_ap.cpp
LOCAL_SRC_FILES += stream_control.cpp 
#LOCAL_SRC_FILES += stream_transcode.cpp 
LOCAL_SRC_FILES += ir_control.cpp 
LOCAL_SRC_FILES += led.cpp 
LOCAL_SRC_FILES += utils.cpp 
LOCAL_SRC_FILES += pipe.cpp 
LOCAL_SRC_FILES += hdmirx.cpp

LOCAL_STATIC_LIBRARIES += \
	libMwtv3service \
	libbinder \
	libcutils \
	libutils \
	liblog

LOCAL_SHARED_LIBRARIES += libRtkIpc
LOCAL_SHARED_LIBRARIES += libstagefright
LOCAL_SHARED_LIBRARIES += libstagefright_foundation
LOCAL_SHARED_LIBRARIES += liblog
LOCAL_SHARED_LIBRARIES += libutils
LOCAL_SHARED_LIBRARIES += libbinder
LOCAL_SHARED_LIBRARIES += libgui
LOCAL_SHARED_LIBRARIES += libcutils
LOCAL_SHARED_LIBRARIES += libui
LOCAL_SHARED_LIBRARIES += libRtkTranscodePlayer
LOCAL_SHARED_LIBRARIES += libmedia

LOCAL_SHARED_LIBRARIES += libcrypto 
LOCAL_SHARED_LIBRARIES += libhardware_legacy
LOCAL_SHARED_LIBRARIES += libnetutils


LOCAL_MODULE:= mwtv3
LOCAL_MODULE_TAGS := optional

LOCAL_C_INCLUDES += frameworks/av/media/libstagefright
LOCAL_C_INCLUDES += frameworks/native/include/media/openmax
LOCAL_C_INCLUDES += frameworks/native/include
LOCAL_C_INCLUDES += device/realtek/proprietary/libs/Include
LOCAL_C_INCLUDES += device/realtek/proprietary/libs/transcode/
LOCAL_C_INCLUDES += external/boringssl/src/include/
LOCAL_C_INCLUDES += hardware/libhardware_legacy/include/


LOCAL_CFLAGS += -Wno-multichar -Wno-unused-parameter

include $(BUILD_EXECUTABLE)
############################################# 
