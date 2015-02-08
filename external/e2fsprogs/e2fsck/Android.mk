LOCAL_PATH := $(call my-dir)

#########################
# Build the libext2 profile library

libext2_profile_src_files :=  \
	prof_err.c \
	profile.c

libext2_profile_static_libraries := \
	libext2_com_err \
	libc

libext2_profile_shared_libraries := \
	libext2_com_err

libext2_profile_c_includes := external/e2fsprogs/lib

libext2_profile_cflags := -O2 -g -W -Wall \
	-DHAVE_UNISTD_H \
	-DHAVE_ERRNO_H \
	-DHAVE_NETINET_IN_H \
	-DHAVE_SYS_IOCTL_H \
	-DHAVE_SYS_MMAN_H \
	-DHAVE_SYS_MOUNT_H \
	-DHAVE_SYS_PRCTL_H \
	-DHAVE_SYS_RESOURCE_H \
	-DHAVE_SYS_SELECT_H \
	-DHAVE_SYS_STAT_H \
	-DHAVE_SYS_TYPES_H \
	-DHAVE_STDLIB_H \
	-DHAVE_STRDUP \
	-DHAVE_MMAP \
	-DHAVE_UTIME_H \
	-DHAVE_GETPAGESIZE \
	-DHAVE_LSEEK64 \
	-DHAVE_LSEEK64_PROTOTYPE \
	-DHAVE_EXT2_IOCTLS \
	-DHAVE_LINUX_FD_H \
	-DHAVE_TYPE_SSIZE_T \
	-DHAVE_SYS_TIME_H \
	-DHAVE_SYSCONF

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(libext2_profile_src_files)
LOCAL_STATIC_LIBRARIES := $(libext2_profile_static_libraries)
LOCAL_C_INCLUDES := $(libext2_profile_c_includes)
LOCAL_CFLAGS := $(libext2_profile_cflags)
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE := libext2_profile
LOCAL_MODULE_TAGS := user

include $(BUILD_STATIC_LIBRARY)


include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(libext2_profile_src_files)
LOCAL_SHARED_LIBRARIES := $(libext2_profile_shared_libraries)
LOCAL_C_INCLUDES := $(libext2_profile_c_includes)
LOCAL_CFLAGS := $(libext2_profile_cflags)
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE := libext2_profile_host
LOCAL_MODULE_STEM := libext2_profile
LOCAL_MODULE_TAGS := eng

include $(BUILD_HOST_SHARED_LIBRARY)



#########################
# Build the e2fsck binary

e2fsck_src_files :=  \
	e2fsck.c \
	dict.c \
	super.c \
	pass1.c \
	pass1b.c \
	pass2.c \
	pass3.c \
	pass4.c \
	pass5.c \
	journal.c \
	recovery.c \
	revoke.c \
	badblocks.c \
	util.c \
	unix.c \
	dirinfo.c \
	dx_dirinfo.c \
	ehandler.c \
	problem.c \
	message.c \
	crc32.c \
	ea_refcount.c \
	rehash.c \
	region.c
	
e2fsck_static_libraries := \
	libext2fs \
	libext2_blkid \
	libext2_uuid \
	libext2_profile \
	libext2_com_err \
	libext2_e2p \
	libc

e2fsck_shared_libraries := \
	libext2fs \
	libext2_blkid \
	libext2_uuid \
	libext2_profile \
	libext2_com_err \
	libext2_e2p

e2fsck_c_includes := external/e2fsprogs/lib

e2fsck_cflags := -O2 -g -W -Wall \
	-DHAVE_DIRENT_H \
	-DHAVE_ERRNO_H \
	-DHAVE_INTTYPES_H \
	-DHAVE_LINUX_FD_H \
	-DHAVE_NETINET_IN_H \
	-DHAVE_SETJMP_H \
	-DHAVE_SYS_IOCTL_H \
	-DHAVE_SYS_MMAN_H \
	-DHAVE_SYS_MOUNT_H \
	-DHAVE_SYS_PRCTL_H \
	-DHAVE_SYS_RESOURCE_H \
	-DHAVE_SYS_SELECT_H \
	-DHAVE_SYS_STAT_H \
	-DHAVE_SYS_TYPES_H \
	-DHAVE_STDLIB_H \
	-DHAVE_UNISTD_H \
	-DHAVE_UTIME_H \
	-DHAVE_STRDUP \
	-DHAVE_MMAP \
	-DHAVE_GETPAGESIZE \
	-DHAVE_LSEEK64 \
	-DHAVE_LSEEK64_PROTOTYPE \
	-DHAVE_EXT2_IOCTLS \
	-DHAVE_TYPE_SSIZE_T \
	-DROOT_SYSCONFDIR="" \
	-DHAVE_INTPTR_T \
	-DHAVE_SYSCONF \
	-DHAVE_SYS_TIME_H \
	-DENABLE_HTREE=1

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(e2fsck_src_files)
LOCAL_C_INCLUDES := $(e2fsck_c_includes)
LOCAL_CFLAGS := $(e2fsck_cflags)
LOCAL_STATIC_LIBRARIES := $(e2fsck_static_libraries) 
LOCAL_MODULE := e2fsck
LOCAL_MODULE_TAGS := user
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT_SBIN)
LOCAL_UNSTRIPPED_PATH := $(TARGET_ROOT_OUT_SBIN_UNSTRIPPED)

include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(e2fsck_src_files)
LOCAL_C_INCLUDES := $(e2fsck_c_includes)
LOCAL_CFLAGS := $(e2fsck_cflags)
LOCAL_SHARED_LIBRARIES := $(e2fsck_shared_libraries)
LOCAL_MODULE := e2fsck_host
LOCAL_MODULE_STEM := e2fsck
LOCAL_MODULE_TAGS := eng

include $(BUILD_HOST_EXECUTABLE)

