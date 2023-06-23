# Add 1k of padding to the DTBs to allow for environment variables
# to be runtime added by the bootloader (i.e. /chosen properties)
DTC_FLAGS := -p 1024

dtb-$(CONFIG_MACH_MOTOROLA_HANNAH) += msm8917-hannah-p0.dtb
dtb-$(CONFIG_MACH_MOTOROLA_HANNAH) += msm8937-hannah-p0.dtb
dtb-$(CONFIG_MACH_MOTOROLA_HANNAH) += msm8940-hannah-p0.dtb

always		:= $(dtb-y)
subdir-y	:= $(dts-dirs)
clean-files	:= *.dtb
