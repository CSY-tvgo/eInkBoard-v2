##
## Auto Generated makefile by CDK
## Do not modify this file, and any manual changes will be erased!!!   
##
## BuildSet
ProjectName            :=cb2201-hello_world
ConfigurationName      :=BuildSet
WorkspacePath          :=C:/Users/24479/AppData/Roaming/cdk/default_workspace4/
ProjectPath            :=E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/projects/examples/hello_world/CDK/
IntermediateDirectory  :=Obj
OutDir                 :=$(IntermediateDirectory)
User                   :=24479
Date                   :=25/05/2021
CDKPath                :=D:/C-Sky/C-Sky Development Kit
LinkerName             :=csky-elfabiv2-gcc
LinkerNameoption       :=
SIZE                   :=csky-elfabiv2-size
READELF                :=csky-elfabiv2-readelf
CHECKSUM               :=crc32
SharedObjectLinkerName :=
ObjectSuffix           :=.o
DependSuffix           :=.d
PreprocessSuffix       :=.i
DisassemSuffix         :=.asm
IHexSuffix             :=.ihex
BinSuffix              :=.bin
ExeSuffix              :=.elf
LibSuffix              :=.a
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
ElfInfoSwitch          :=-hlS
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
UnPreprocessorSwitch   :=-U
SourceSwitch           :=-c 
ObjdumpSwitch          :=-S
ObjcopySwitch          :=-O ihex
ObjcopyBinSwitch       :=-O binary
OutputFile             :=$(ProjectName)
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="cb2201-hello_world.txt"
MakeDirCommand         :=mkdir
LinkOptions            :=-mcpu=ck802  -nostartfiles -Wl,--gc-sections -Wl,-zmax-page-size=1024 -T"$(ProjectPath)/../../../../board/cb2201/gcc_csky.ld"
IncludeCPath           :=$(IncludeSwitch)"$(ProjectPath)" $(IncludeSwitch)"$(ProjectPath)/../../../../csi_core/include" $(IncludeSwitch)"$(ProjectPath)/../../../../csi_driver/include" $(IncludeSwitch)"$(ProjectPath)/../../../../libs/include" $(IncludeSwitch)"$(ProjectPath)/../../../../csi_driver/ch2201/include" $(IncludeSwitch)"$(ProjectPath)/../../../../csi_kernel/include" $(IncludeSwitch)"$(ProjectPath)/../../../../board/cb2201/include" $(IncludeSwitch)"$(ProjectPath)/../../../../projects/examples/hello_world/configs" 
IncludeAPath           :=$(IncludeSwitch)"$(ProjectPath)" -Wa,$(IncludeSwitch)"$(ProjectPath)" $(IncludeSwitch)"$(ProjectPath)/../../../../projects/examples/hello_world/configs" -Wa,$(IncludeSwitch)"$(ProjectPath)/../../../../projects/examples/hello_world/configs" 
Libs                   :=$(LibrarySwitch)m 
ArLibs                 := "m" 
LibPath                :=

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       :=csky-elfabiv2-ar rcu
CXX      :=csky-elfabiv2-g++
CC       :=csky-elfabiv2-gcc
AS       :=csky-elfabiv2-gcc
OBJDUMP  :=csky-elfabiv2-objdump
OBJCOPY  :=csky-elfabiv2-objcopy
CXXFLAGS :=-mcpu=ck802    -Os  -g3  -Wall -ffunction-sections -fdata-sections 
CFLAGS   :=-mcpu=ck802    -Os  -g3  -Wall -ffunction-sections -fdata-sections 
ASFLAGS  :=-mcpu=ck802    -Wa,--gdwarf2    


Objects0=$(IntermediateDirectory)/cb2201_board_init$(ObjectSuffix) $(IntermediateDirectory)/ch2201_ck_adc$(ObjectSuffix) $(IntermediateDirectory)/ch2201_ck_aes$(ObjectSuffix) $(IntermediateDirectory)/ch2201_ck_crc_v1$(ObjectSuffix) $(IntermediateDirectory)/ch2201_ck_eflash$(ObjectSuffix) $(IntermediateDirectory)/ch2201_ck_i2s$(ObjectSuffix) $(IntermediateDirectory)/ch2201_ck_pwm$(ObjectSuffix) $(IntermediateDirectory)/ch2201_ck_rsa$(ObjectSuffix) $(IntermediateDirectory)/ch2201_ck_rtc$(ObjectSuffix) $(IntermediateDirectory)/ch2201_ck_sha_v1$(ObjectSuffix) \
	$(IntermediateDirectory)/ch2201_ck_sys_freq$(ObjectSuffix) $(IntermediateDirectory)/ch2201_ck_trng$(ObjectSuffix) $(IntermediateDirectory)/ch2201_devices$(ObjectSuffix) $(IntermediateDirectory)/ch2201_dw_dmac$(ObjectSuffix) $(IntermediateDirectory)/ch2201_dw_gpio$(ObjectSuffix) $(IntermediateDirectory)/ch2201_dw_iic$(ObjectSuffix) $(IntermediateDirectory)/ch2201_dw_spi$(ObjectSuffix) $(IntermediateDirectory)/ch2201_dw_timer$(ObjectSuffix) $(IntermediateDirectory)/ch2201_dw_usart$(ObjectSuffix) $(IntermediateDirectory)/ch2201_dw_wdt$(ObjectSuffix) \
	$(IntermediateDirectory)/ch2201_isr$(ObjectSuffix) $(IntermediateDirectory)/ch2201_lib$(ObjectSuffix) $(IntermediateDirectory)/ch2201_novic_irq_tbl$(ObjectSuffix) $(IntermediateDirectory)/ch2201_pinmux$(ObjectSuffix) $(IntermediateDirectory)/ch2201_startup$(ObjectSuffix) $(IntermediateDirectory)/ch2201_system$(ObjectSuffix) $(IntermediateDirectory)/ch2201_trap_c$(ObjectSuffix) $(IntermediateDirectory)/ch2201_vectors$(ObjectSuffix) $(IntermediateDirectory)/libc_malloc$(ObjectSuffix) $(IntermediateDirectory)/libc_minilibc_port$(ObjectSuffix) \
	$(IntermediateDirectory)/mm_dq_addlast$(ObjectSuffix) $(IntermediateDirectory)/mm_dq_rem$(ObjectSuffix) $(IntermediateDirectory)/mm_lib_mallinfo$(ObjectSuffix) $(IntermediateDirectory)/mm_mm_addfreechunk$(ObjectSuffix) $(IntermediateDirectory)/mm_mm_free$(ObjectSuffix) $(IntermediateDirectory)/mm_mm_initialize$(ObjectSuffix) $(IntermediateDirectory)/mm_mm_leak$(ObjectSuffix) $(IntermediateDirectory)/mm_mm_mallinfo$(ObjectSuffix) $(IntermediateDirectory)/mm_mm_malloc$(ObjectSuffix) $(IntermediateDirectory)/mm_mm_size2ndx$(ObjectSuffix) \
	$(IntermediateDirectory)/hello_world_main$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PostBuild MakeIntermediateDirs
all: $(IntermediateDirectory)/$(OutputFile)

$(IntermediateDirectory)/$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	@echo linking...
	@$(LinkerName) $(OutputSwitch)"$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix)" $(LinkerNameoption) @$(ObjectsFileList)  $(LibPath) $(Libs)  -Wl,--whole-archive  -Wl,--no-whole-archive $(LinkOptions)
	@echo size of target:
	@$(SIZE) "$(ProjectPath)$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix)" 
	@echo -n "checksum value of target:  "
	@$(CHECKSUM) "$(ProjectPath)/$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix)" 
	
PostBuild:
	@echo Executing Post Build commands ...
	@E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/projects/examples/hello_world/CDK//../../../../utilities/elf2hex/hex/aft_build.sh
	@echo Done

MakeIntermediateDirs:
	@test -d Obj || $(MakeDirCommand) Obj

	@test -d Lst || $(MakeDirCommand) Lst

$(IntermediateDirectory)/.d:
	@test -d Obj || $(MakeDirCommand) Obj
	@test -d Lst || $(MakeDirCommand) Lst


PreBuild:


##
## Objects
##
$(IntermediateDirectory)/cb2201_board_init$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/board/cb2201/board_init.c  
	@echo compiling board_init.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/board/cb2201/board_init.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/cb2201_board_init$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/cb2201_board_init$(ObjectSuffix) -MF$(IntermediateDirectory)/cb2201_board_init$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/board/cb2201/board_init.c"

Lst/cb2201_board_init$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/board/cb2201/board_init.c
	@echo generating preprocess file of board_init.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/cb2201_board_init$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/board/cb2201/board_init.c"

$(IntermediateDirectory)/ch2201_ck_adc$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_adc.c  
	@echo compiling ck_adc.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_adc.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_ck_adc$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_ck_adc$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_ck_adc$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_adc.c"

Lst/ch2201_ck_adc$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_adc.c
	@echo generating preprocess file of ck_adc.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_ck_adc$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_adc.c"

$(IntermediateDirectory)/ch2201_ck_aes$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_aes.c  
	@echo compiling ck_aes.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_aes.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_ck_aes$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_ck_aes$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_ck_aes$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_aes.c"

Lst/ch2201_ck_aes$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_aes.c
	@echo generating preprocess file of ck_aes.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_ck_aes$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_aes.c"

$(IntermediateDirectory)/ch2201_ck_crc_v1$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_crc_v1.c  
	@echo compiling ck_crc_v1.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_crc_v1.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_ck_crc_v1$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_ck_crc_v1$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_ck_crc_v1$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_crc_v1.c"

Lst/ch2201_ck_crc_v1$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_crc_v1.c
	@echo generating preprocess file of ck_crc_v1.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_ck_crc_v1$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_crc_v1.c"

$(IntermediateDirectory)/ch2201_ck_eflash$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_eflash.c  
	@echo compiling ck_eflash.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_eflash.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_ck_eflash$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_ck_eflash$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_ck_eflash$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_eflash.c"

Lst/ch2201_ck_eflash$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_eflash.c
	@echo generating preprocess file of ck_eflash.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_ck_eflash$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_eflash.c"

$(IntermediateDirectory)/ch2201_ck_i2s$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_i2s.c  
	@echo compiling ck_i2s.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_i2s.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_ck_i2s$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_ck_i2s$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_ck_i2s$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_i2s.c"

Lst/ch2201_ck_i2s$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_i2s.c
	@echo generating preprocess file of ck_i2s.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_ck_i2s$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_i2s.c"

$(IntermediateDirectory)/ch2201_ck_pwm$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_pwm.c  
	@echo compiling ck_pwm.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_pwm.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_ck_pwm$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_ck_pwm$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_ck_pwm$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_pwm.c"

Lst/ch2201_ck_pwm$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_pwm.c
	@echo generating preprocess file of ck_pwm.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_ck_pwm$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_pwm.c"

$(IntermediateDirectory)/ch2201_ck_rsa$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_rsa.c  
	@echo compiling ck_rsa.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_rsa.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_ck_rsa$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_ck_rsa$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_ck_rsa$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_rsa.c"

Lst/ch2201_ck_rsa$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_rsa.c
	@echo generating preprocess file of ck_rsa.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_ck_rsa$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_rsa.c"

$(IntermediateDirectory)/ch2201_ck_rtc$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_rtc.c  
	@echo compiling ck_rtc.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_rtc.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_ck_rtc$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_ck_rtc$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_ck_rtc$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_rtc.c"

Lst/ch2201_ck_rtc$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_rtc.c
	@echo generating preprocess file of ck_rtc.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_ck_rtc$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_rtc.c"

$(IntermediateDirectory)/ch2201_ck_sha_v1$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_sha_v1.c  
	@echo compiling ck_sha_v1.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_sha_v1.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_ck_sha_v1$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_ck_sha_v1$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_ck_sha_v1$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_sha_v1.c"

Lst/ch2201_ck_sha_v1$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_sha_v1.c
	@echo generating preprocess file of ck_sha_v1.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_ck_sha_v1$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_sha_v1.c"

$(IntermediateDirectory)/ch2201_ck_sys_freq$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_sys_freq.c  
	@echo compiling ck_sys_freq.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_sys_freq.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_ck_sys_freq$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_ck_sys_freq$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_ck_sys_freq$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_sys_freq.c"

Lst/ch2201_ck_sys_freq$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_sys_freq.c
	@echo generating preprocess file of ck_sys_freq.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_ck_sys_freq$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_sys_freq.c"

$(IntermediateDirectory)/ch2201_ck_trng$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_trng.c  
	@echo compiling ck_trng.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_trng.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_ck_trng$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_ck_trng$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_ck_trng$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_trng.c"

Lst/ch2201_ck_trng$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_trng.c
	@echo generating preprocess file of ck_trng.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_ck_trng$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/ck_trng.c"

$(IntermediateDirectory)/ch2201_devices$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/devices.c  
	@echo compiling devices.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/devices.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_devices$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_devices$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_devices$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/devices.c"

Lst/ch2201_devices$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/devices.c
	@echo generating preprocess file of devices.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_devices$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/devices.c"

$(IntermediateDirectory)/ch2201_dw_dmac$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_dmac.c  
	@echo compiling dw_dmac.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_dmac.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_dw_dmac$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_dw_dmac$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_dw_dmac$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_dmac.c"

Lst/ch2201_dw_dmac$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_dmac.c
	@echo generating preprocess file of dw_dmac.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_dw_dmac$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_dmac.c"

$(IntermediateDirectory)/ch2201_dw_gpio$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_gpio.c  
	@echo compiling dw_gpio.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_gpio.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_dw_gpio$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_dw_gpio$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_dw_gpio$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_gpio.c"

Lst/ch2201_dw_gpio$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_gpio.c
	@echo generating preprocess file of dw_gpio.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_dw_gpio$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_gpio.c"

$(IntermediateDirectory)/ch2201_dw_iic$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_iic.c  
	@echo compiling dw_iic.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_iic.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_dw_iic$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_dw_iic$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_dw_iic$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_iic.c"

Lst/ch2201_dw_iic$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_iic.c
	@echo generating preprocess file of dw_iic.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_dw_iic$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_iic.c"

$(IntermediateDirectory)/ch2201_dw_spi$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_spi.c  
	@echo compiling dw_spi.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_spi.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_dw_spi$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_dw_spi$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_dw_spi$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_spi.c"

Lst/ch2201_dw_spi$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_spi.c
	@echo generating preprocess file of dw_spi.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_dw_spi$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_spi.c"

$(IntermediateDirectory)/ch2201_dw_timer$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_timer.c  
	@echo compiling dw_timer.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_timer.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_dw_timer$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_dw_timer$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_dw_timer$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_timer.c"

Lst/ch2201_dw_timer$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_timer.c
	@echo generating preprocess file of dw_timer.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_dw_timer$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_timer.c"

$(IntermediateDirectory)/ch2201_dw_usart$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_usart.c  
	@echo compiling dw_usart.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_usart.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_dw_usart$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_dw_usart$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_dw_usart$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_usart.c"

Lst/ch2201_dw_usart$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_usart.c
	@echo generating preprocess file of dw_usart.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_dw_usart$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_usart.c"

$(IntermediateDirectory)/ch2201_dw_wdt$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_wdt.c  
	@echo compiling dw_wdt.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_wdt.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_dw_wdt$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_dw_wdt$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_dw_wdt$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_wdt.c"

Lst/ch2201_dw_wdt$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_wdt.c
	@echo generating preprocess file of dw_wdt.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_dw_wdt$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/dw_wdt.c"

$(IntermediateDirectory)/ch2201_isr$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/isr.c  
	@echo compiling isr.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/isr.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_isr$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_isr$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_isr$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/isr.c"

Lst/ch2201_isr$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/isr.c
	@echo generating preprocess file of isr.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_isr$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/isr.c"

$(IntermediateDirectory)/ch2201_lib$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/lib.c  
	@echo compiling lib.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/lib.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_lib$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_lib$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_lib$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/lib.c"

Lst/ch2201_lib$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/lib.c
	@echo generating preprocess file of lib.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_lib$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/lib.c"

$(IntermediateDirectory)/ch2201_novic_irq_tbl$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/novic_irq_tbl.c  
	@echo compiling novic_irq_tbl.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/novic_irq_tbl.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_novic_irq_tbl$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_novic_irq_tbl$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_novic_irq_tbl$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/novic_irq_tbl.c"

Lst/ch2201_novic_irq_tbl$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/novic_irq_tbl.c
	@echo generating preprocess file of novic_irq_tbl.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_novic_irq_tbl$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/novic_irq_tbl.c"

$(IntermediateDirectory)/ch2201_pinmux$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/pinmux.c  
	@echo compiling pinmux.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/pinmux.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_pinmux$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_pinmux$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_pinmux$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/pinmux.c"

Lst/ch2201_pinmux$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/pinmux.c
	@echo generating preprocess file of pinmux.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_pinmux$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/pinmux.c"

$(IntermediateDirectory)/ch2201_startup$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/startup.S  
	@echo assembling startup.S...
	@$(AS) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/startup.S" $(ASFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_startup$(ObjectSuffix) $(IncludeAPath)
	@$(CC) $(CFLAGS) $(IncludeAPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_startup$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_startup$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/startup.S"

Lst/ch2201_startup$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/startup.S
	@echo generating preprocess file of startup.S...
	@$(CC) $(CFLAGS)$(IncludeAPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_startup$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/startup.S"

$(IntermediateDirectory)/ch2201_system$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/system.c  
	@echo compiling system.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/system.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_system$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_system$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_system$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/system.c"

Lst/ch2201_system$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/system.c
	@echo generating preprocess file of system.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_system$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/system.c"

$(IntermediateDirectory)/ch2201_trap_c$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/trap_c.c  
	@echo compiling trap_c.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/trap_c.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_trap_c$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_trap_c$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_trap_c$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/trap_c.c"

Lst/ch2201_trap_c$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/trap_c.c
	@echo generating preprocess file of trap_c.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_trap_c$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/trap_c.c"

$(IntermediateDirectory)/ch2201_vectors$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/vectors.S  
	@echo assembling vectors.S...
	@$(AS) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/vectors.S" $(ASFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ch2201_vectors$(ObjectSuffix) $(IncludeAPath)
	@$(CC) $(CFLAGS) $(IncludeAPath) -MG -MP -MT$(IntermediateDirectory)/ch2201_vectors$(ObjectSuffix) -MF$(IntermediateDirectory)/ch2201_vectors$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/vectors.S"

Lst/ch2201_vectors$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/vectors.S
	@echo generating preprocess file of vectors.S...
	@$(CC) $(CFLAGS)$(IncludeAPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ch2201_vectors$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/csi_driver/ch2201/vectors.S"

$(IntermediateDirectory)/libc_malloc$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/libc/malloc.c  
	@echo compiling malloc.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/libc/malloc.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/libc_malloc$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/libc_malloc$(ObjectSuffix) -MF$(IntermediateDirectory)/libc_malloc$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/libc/malloc.c"

Lst/libc_malloc$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/libc/malloc.c
	@echo generating preprocess file of malloc.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/libc_malloc$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/libc/malloc.c"

$(IntermediateDirectory)/libc_minilibc_port$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/libc/minilibc_port.c  
	@echo compiling minilibc_port.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/libc/minilibc_port.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/libc_minilibc_port$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/libc_minilibc_port$(ObjectSuffix) -MF$(IntermediateDirectory)/libc_minilibc_port$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/libc/minilibc_port.c"

Lst/libc_minilibc_port$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/libc/minilibc_port.c
	@echo generating preprocess file of minilibc_port.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/libc_minilibc_port$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/libc/minilibc_port.c"

$(IntermediateDirectory)/mm_dq_addlast$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/dq_addlast.c  
	@echo compiling dq_addlast.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/dq_addlast.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mm_dq_addlast$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/mm_dq_addlast$(ObjectSuffix) -MF$(IntermediateDirectory)/mm_dq_addlast$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/dq_addlast.c"

Lst/mm_dq_addlast$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/dq_addlast.c
	@echo generating preprocess file of dq_addlast.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mm_dq_addlast$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/dq_addlast.c"

$(IntermediateDirectory)/mm_dq_rem$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/dq_rem.c  
	@echo compiling dq_rem.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/dq_rem.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mm_dq_rem$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/mm_dq_rem$(ObjectSuffix) -MF$(IntermediateDirectory)/mm_dq_rem$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/dq_rem.c"

Lst/mm_dq_rem$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/dq_rem.c
	@echo generating preprocess file of dq_rem.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mm_dq_rem$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/dq_rem.c"

$(IntermediateDirectory)/mm_lib_mallinfo$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/lib_mallinfo.c  
	@echo compiling lib_mallinfo.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/lib_mallinfo.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mm_lib_mallinfo$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/mm_lib_mallinfo$(ObjectSuffix) -MF$(IntermediateDirectory)/mm_lib_mallinfo$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/lib_mallinfo.c"

Lst/mm_lib_mallinfo$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/lib_mallinfo.c
	@echo generating preprocess file of lib_mallinfo.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mm_lib_mallinfo$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/lib_mallinfo.c"

$(IntermediateDirectory)/mm_mm_addfreechunk$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_addfreechunk.c  
	@echo compiling mm_addfreechunk.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_addfreechunk.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mm_mm_addfreechunk$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/mm_mm_addfreechunk$(ObjectSuffix) -MF$(IntermediateDirectory)/mm_mm_addfreechunk$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_addfreechunk.c"

Lst/mm_mm_addfreechunk$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_addfreechunk.c
	@echo generating preprocess file of mm_addfreechunk.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mm_mm_addfreechunk$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_addfreechunk.c"

$(IntermediateDirectory)/mm_mm_free$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_free.c  
	@echo compiling mm_free.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_free.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mm_mm_free$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/mm_mm_free$(ObjectSuffix) -MF$(IntermediateDirectory)/mm_mm_free$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_free.c"

Lst/mm_mm_free$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_free.c
	@echo generating preprocess file of mm_free.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mm_mm_free$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_free.c"

$(IntermediateDirectory)/mm_mm_initialize$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_initialize.c  
	@echo compiling mm_initialize.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_initialize.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mm_mm_initialize$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/mm_mm_initialize$(ObjectSuffix) -MF$(IntermediateDirectory)/mm_mm_initialize$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_initialize.c"

Lst/mm_mm_initialize$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_initialize.c
	@echo generating preprocess file of mm_initialize.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mm_mm_initialize$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_initialize.c"

$(IntermediateDirectory)/mm_mm_leak$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_leak.c  
	@echo compiling mm_leak.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_leak.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mm_mm_leak$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/mm_mm_leak$(ObjectSuffix) -MF$(IntermediateDirectory)/mm_mm_leak$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_leak.c"

Lst/mm_mm_leak$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_leak.c
	@echo generating preprocess file of mm_leak.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mm_mm_leak$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_leak.c"

$(IntermediateDirectory)/mm_mm_mallinfo$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_mallinfo.c  
	@echo compiling mm_mallinfo.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_mallinfo.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mm_mm_mallinfo$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/mm_mm_mallinfo$(ObjectSuffix) -MF$(IntermediateDirectory)/mm_mm_mallinfo$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_mallinfo.c"

Lst/mm_mm_mallinfo$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_mallinfo.c
	@echo generating preprocess file of mm_mallinfo.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mm_mm_mallinfo$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_mallinfo.c"

$(IntermediateDirectory)/mm_mm_malloc$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_malloc.c  
	@echo compiling mm_malloc.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_malloc.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mm_mm_malloc$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/mm_mm_malloc$(ObjectSuffix) -MF$(IntermediateDirectory)/mm_mm_malloc$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_malloc.c"

Lst/mm_mm_malloc$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_malloc.c
	@echo generating preprocess file of mm_malloc.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mm_mm_malloc$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_malloc.c"

$(IntermediateDirectory)/mm_mm_size2ndx$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_size2ndx.c  
	@echo compiling mm_size2ndx.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_size2ndx.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mm_mm_size2ndx$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/mm_mm_size2ndx$(ObjectSuffix) -MF$(IntermediateDirectory)/mm_mm_size2ndx$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_size2ndx.c"

Lst/mm_mm_size2ndx$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_size2ndx.c
	@echo generating preprocess file of mm_size2ndx.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/mm_mm_size2ndx$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/libs/mm/mm_size2ndx.c"

$(IntermediateDirectory)/hello_world_main$(ObjectSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/projects/examples/hello_world/main.c  
	@echo compiling main.c...
	@$(CC) $(SourceSwitch) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/projects/examples/hello_world/main.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/hello_world_main$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/hello_world_main$(ObjectSuffix) -MF$(IntermediateDirectory)/hello_world_main$(DependSuffix) -MM "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/projects/examples/hello_world/main.c"

Lst/hello_world_main$(PreprocessSuffix): E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/projects/examples/hello_world/main.c
	@echo generating preprocess file of main.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/hello_world_main$(PreprocessSuffix) "E:/202104_1_eInkBoard_v2/CB2201/CSI-RTOS/CSI-RTOS-v1.4-for-CB2201/Software/projects/examples/hello_world/main.c"


$(IntermediateDirectory)/__rt_entry$(ObjectSuffix): $(IntermediateDirectory)/__rt_entry$(DependSuffix)
	@$(AS) $(SourceSwitch) "$(ProjectPath)/$(IntermediateDirectory)/__rt_entry.S" $(ASFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/__rt_entry$(ObjectSuffix) $(IncludeAPath)
	@rm -f $(IntermediateDirectory)/__rt_entry.S
$(IntermediateDirectory)/__rt_entry$(DependSuffix):
	@$(CC) $(CFLAGS) $(IncludeAPath) -MG -MP -MT$(IntermediateDirectory)/__rt_entry$(ObjectSuffix) -MF$(IntermediateDirectory)/__rt_entry$(DependSuffix) -MM "$(ProjectPath)/$(IntermediateDirectory)/__rt_entry.S"

-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	@echo Cleaning target...
	@rm -rf $(IntermediateDirectory)/ $(ObjectsFileList) cb2201-hello_world.mk Lst/

clean_internal:
	@rm -rf $(IntermediateDirectory)/*.o $(IntermediateDirectory)/.d $(IntermediateDirectory)/*.d $(IntermediateDirectory)/*.a $(IntermediateDirectory)/*.elf $(IntermediateDirectory)/*.ihex Lst/

