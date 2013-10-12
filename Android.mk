ifneq ($(filter chacha,$(TARGET_DEVICE)),)
    include $(all-subdir-makefiles)
endif
