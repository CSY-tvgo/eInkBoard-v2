##
 # Copyright (C) 2017 C-SKY Microsystems Co., Ltd. All rights reserved.
 #
 # Licensed under the Apache License, Version 2.0 (the "License");
 # you may not use this file except in compliance with the License.
 # You may obtain a copy of the License at
 #
 #   http://www.apache.org/licenses/LICENSE-2.0
 #
 # Unless required by applicable law or agreed to in writing, software
 # distributed under the License is distributed on an "AS IS" BASIS,
 # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 # See the License for the specific language governing permissions and
 # limitations under the License.
##

NAME   = cb2201
CDIR   = .
BUILDDIR= $(CDIR)/out
OBJDIR = $(BUILDDIR)/obj
MAKEDIR = $(shell pwd)
ROOTDIR = $(MAKEDIR)/../../../

CFLAGS += -g2
CFLAGS += -Os
CFLAGS += -mlittle-endian

TARGET_CPU = ck802
SOC	= ch2201
BOARD = cb2201
KERNEL = none
HAVE_VIC = n
HELIX = n
TEST_KERNEL = n
TEST_DRIVER = n
TEST_CORE = n
EXAMPLE_DSP = n
HEX_BUILDDIR = $(ROOTDIR)/utilities/elf2hex/hex

export TARGET_CPU SOC BOARD KERNEL HAVE_VIC

LINKFILE = gcc_csky.ld
LINKDIR  = $(ROOTDIR)/board/$(BOARD)

ifeq ($(strip $(TARGET_CPU)),$(filter $(TARGET_CPU), ck610e ck610ef))
CC      = csky-elf-gcc
LD      = csky-elf-ld
AR      = csky-elf-ar
AS      = csky-elf-as
GS      = csky-elf-gasp
OBJDUMP = csky-elf-objdump
OBJCOPY = csky-elf-objcopy
else
CC      = csky-abiv2-elf-gcc
LD      = csky-abiv2-elf-ld
AR      = csky-abiv2-elf-ar
AS      = csky-abiv2-elf-as
GS      = csky-abiv2-elf-gasp
OBJDUMP = csky-abiv2-elf-objdump
OBJCOPY = csky-abiv2-elf-objcopy
endif
RM      = rm
MV      = mv

INCLUDEDIRS = \
              -I$(MAKEDIR)/                 \
              -I$(MAKEDIR)/ \
              -I$(MAKEDIR)/configs \
              -I$(ROOTDIR)/csi_core/include        \
              -I$(ROOTDIR)/csi_driver/include      \
              -I$(ROOTDIR)/csi_driver/$(SOC)/include \
              -I$(ROOTDIR)/libs/include                \
              -I$(ROOTDIR)/board/$(BOARD)/include

CSRC = \
          $(ROOTDIR)/libs/mm/*.c          \
          $(ROOTDIR)/libs/libc/*.c          \
          $(ROOTDIR)/csi_driver/$(SOC)/*.c      \
          $(ROOTDIR)/board/$(BOARD)/*.c   \

ifneq ($(KERNEL), none)
INCLUDEDIRS += -I$(ROOTDIR)/csi_kernel/include
endif

ifeq ($(TEST_KERNEL), y)
INCLUDEDIRS += -I$(ROOTDIR)/projects/tests/kernel/include
INCLUDEDIRS += -I$(ROOTDIR)/projects/tests/dtest/include
CSRC += $(ROOTDIR)/projects/tests/dtest/dtest.c
endif

ifeq ($(TEST_DRIVER), y)
INCLUDEDIRS += -I$(ROOTDIR)/projects/tests/driver/include
INCLUDEDIRS += -I$(ROOTDIR)/projects/tests/dtest/include
CSRC += $(ROOTDIR)/projects/tests/dtest/dtest.c
endif

ifeq ($(TEST_CORE), y)
INCLUDEDIRS += -I$(ROOTDIR)/projects/tests/core/include
INCLUDEDIRS += -I$(ROOTDIR)/projects/tests/dtest/include
CSRC += $(ROOTDIR)/projects/tests/dtest/dtest.c
endif

ifeq ($(EXAMPLE_DSP), y)
INCLUDEDIRS += -I$(ROOTDIR)/csi_dsp/include
DSP_LIB = $(ROOTDIR)/csi_dsp/lib/libcsky_CK803slf_math.a
endif

ifneq ($(KERNEL), none)
#CSRC += $(MAKEDIR)/../*.c
CSRC += $(shell find $(MAKEDIR)/../ -name "*.c")
else
CSRC += $(shell find $(MAKEDIR)/ -name "*.c")
endif
SSRC += $(ROOTDIR)/csi_driver/$(SOC)/*.S

include sub.mk

ENDIAN = -mlittle-endian
CFLAGS += $(INCLUDEDIRS)
CFLAGS += -c -g -ffunction-sections -fdata-sections -Wall
CFLAGS += -mcpu=$(TARGET_CPU)
ifeq ($(ENDIAN),-mbig-endian)
AFLAGS = -EB -mcpu=$(TARGET_CPU)
else
AFLAGS = -EL -mcpu=$(TARGET_CPU)
endif

LDFLAGS += $(ENDIAN)

export CC AS AR LD GS RM OBJDUMP CFLAGS AFLAGS MV

ifeq ($(V), 1)
Q =
else
Q = @
endif

ifeq ($(SOC), ch2201)
all: $(NAME).elf hexfile
else
all: $(NAME).elf
endif

SSRCFILE = $(wildcard $(SSRC))
CSRCFILE = $(wildcard $(CSRC))

OBJECTS = $(SSRCFILE:%.S=%.o) $(CSRCFILE:%.c=%.o)

%.o:%.c
	@echo CC ${shell echo $<|awk -F '/' '{print $$NF}'}
	$(Q)$(CC)  $(CFLAGS) -o $@  $<

%.o:%.S
	@echo AS ${shell echo $<|awk -F '/' '{print $$NF}'}
	$(Q)$(CC)  $(CFLAGS) -o $@  $<

build_dir:
	@mkdir -p $(BUILDDIR)
	@mkdir -p $(OBJDIR)

$(NAME).elf: build_dir $(OBJECTS) $(LINKDIR)/$(LINKFILE)
	@echo LINK $@
	$(Q)$(CC) $(LDFLAGS) -mcpu=$(TARGET_CPU) -static \
	-nostartfiles -o $(BUILDDIR)/$(NAME).elf \
	-Wl,--whole-archive $(OBJECTS) $(DSP_LIB) -Wl,--no-whole-archive \
	-Wl,-T$(LINKDIR)/$(LINKFILE) \
	-lm -lc -lgcc -Wl,-gc-sections -Wl,-zmax-page-size=1024
	@-mv $(OBJECTS) $(OBJDIR)
	$(Q)$(OBJDUMP) -S $(BUILDDIR)/$(NAME).elf > $(BUILDDIR)/$(NAME).asm

hexfile:
	@mkdir -p out/generated
	@mkdir -p $(HEX_BUILDDIR)/generated/hexs
	@mkdir -p $(HEX_BUILDDIR)/generated/imgs
	@$(OBJCOPY) -O binary $(BUILDDIR)/$(NAME).elf $(HEX_BUILDDIR)/generated/imgs/boot
	@sh $(HEX_BUILDDIR)/mtbhex.sh $(ROOTDIR) $(LINKDIR) $(HEX_BUILDDIR)
	@sh $(HEX_BUILDDIR)/img2hex.sh $(ROOTDIR) $(LINKDIR) $(OBJCOPY) $(HEX_BUILDDIR)
	@cp  -rf $(HEX_BUILDDIR)/generated/hexs $(HEX_BUILDDIR)/generated/imgs out/generated
	@mv  out/generated/imgs/boot out/generated/imgs/$(NAME).bin
	@mv  out/generated/hexs/boot.hex out/generated/hexs/$(NAME).hex
	@rm  -rf $(HEX_BUILDDIR)/generated/hexs $(HEX_BUILDDIR)/generated/imgs

clean:
	@echo clean
	@$(RM) -rf $(BUILDDIR) $(OBJECTS)

