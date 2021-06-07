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

ifeq ($(KERNEL), rhino)
INCLUDEDIRS += -I$(ROOTDIR)/csi_kernel/include
INCLUDEDIRS += -I$(ROOTDIR)/csi_kernel/rhino/pwrmgmt
INCLUDEDIRS += -I$(ROOTDIR)/csi_kernel/rhino/common
INCLUDEDIRS += -I$(ROOTDIR)/csi_kernel/rhino/core/include
INCLUDEDIRS += -I$(ROOTDIR)/csi_kernel/rhino/arch/include

ifeq ($(TARGET_CPU), ck610e)
CSRC += $(ROOTDIR)/csi_kernel/rhino/arch/csky/cskyv1/port_c.c
SSRC += $(ROOTDIR)/csi_kernel/rhino/arch/csky/cskyv1/entry.S
SSRC += $(ROOTDIR)/csi_kernel/rhino/arch/csky/cskyv1/port_s_novic.S
endif
ifeq ($(strip $(TARGET_CPU)),$(filter $(TARGET_CPU), ck807 ck810))
CSRC += $(ROOTDIR)/csi_kernel/rhino/arch/csky/cskyv2-h/cpu_impl.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/arch/csky/cskyv2-h/csky_sched.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/arch/csky/cskyv2-h/dump_backtrace.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/arch/csky/cskyv2-h/port_c.c
SSRC += $(ROOTDIR)/csi_kernel/rhino/arch/csky/cskyv2-h/entry.S
SSRC += $(ROOTDIR)/csi_kernel/rhino/arch/csky/cskyv2-h/port_s_novic.S
endif
ifeq ($(strip $(TARGET_CPU)),$(filter $(TARGET_CPU), ck802 ck803 ck803s ck803er1 ck803f ck803efr1))
CSRC += $(ROOTDIR)/csi_kernel/rhino/arch/csky/cskyv2-l/cpu_impl.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/arch/csky/cskyv2-l/csky_sched.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/arch/csky/cskyv2-l/dump_backtrace.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/arch/csky/cskyv2-l/port_c.c
  ifeq ($(HAVE_VIC), y)
  SSRC += $(ROOTDIR)/csi_kernel/rhino/arch/csky/cskyv2-l/port_s.S
  else
  SSRC += $(ROOTDIR)/csi_kernel/rhino/arch/csky/cskyv2-l/port_s_novic.S
  SSRC += $(ROOTDIR)/csi_kernel/rhino/arch/csky/cskyv2-l/entry.S
  endif
endif

CSRC += $(ROOTDIR)/csi_kernel/rhino/adapter/csi_rhino.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/core/k_buf_queue.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/core/k_dyn_mem_proc.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/core/k_err.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/core/k_event.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/core/k_idle.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/core/k_mm.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/core/k_mm_debug.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/core/k_mm_blk.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/core/k_mutex.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/core/k_obj.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/core/k_pend.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/core/k_queue.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/core/k_ringbuf.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/core/k_sched.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/core/k_sem.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/core/k_stats.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/core/k_sys.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/core/k_task.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/core/k_task_sem.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/core/k_tick.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/core/k_time.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/core/k_timer.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/core/k_workqueue.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/driver/hook_impl.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/driver/systick.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/driver/yoc_impl.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/common/k_atomic.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/common/k_ffs.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/board/board_cpu_pwr.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/board/board_cpu_pwr_systick.c
CSRC += $(ROOTDIR)/csi_kernel/rhino/board/board_cpu_pwr_timer.c

endif

ifeq ($(KERNEL), freertos)
INCLUDEDIRS += -I$(ROOTDIR)/csi_kernel/freertosv8.2.3/FreeRTOS/Source/include

ifeq ($(TARGET_CPU), ck610e)
INCLUDEDIRS += -I$(ROOTDIR)/csi_kernel/freertosv8.2.3/include/cskyv1
INCLUDEDIRS += -I$(ROOTDIR)/csi_kernel/freertosv8.2.3/FreeRTOS/Source/portable/GCC/cskyv1
CSRC += $(ROOTDIR)/csi_kernel/freertosv8.2.3/FreeRTOS/Source/portable/GCC/cskyv1/port.c
SSRC += $(ROOTDIR)/csi_kernel/freertosv8.2.3/FreeRTOS/Source/portable/GCC/cskyv1/cpu_task_sw.S
endif
ifeq ($(strip $(TARGET_CPU)),$(filter $(TARGET_CPU), ck807 ck810))
INCLUDEDIRS += -I$(ROOTDIR)/csi_kernel/freertosv8.2.3/include/cskyv2-h
INCLUDEDIRS += -I$(ROOTDIR)/csi_kernel/freertosv8.2.3/FreeRTOS/Source/portable/GCC/cskyv2-h
CSRC += $(ROOTDIR)/csi_kernel/freertosv8.2.3/FreeRTOS/Source/portable/GCC/cskyv2-h/port.c
SSRC += $(ROOTDIR)/csi_kernel/freertosv8.2.3/FreeRTOS/Source/portable/GCC/cskyv2-h/cpu_task_sw.S
endif
ifeq ($(strip $(TARGET_CPU)),$(filter $(TARGET_CPU), ck802 ck803 ck803s ck803er1 ck803f ck803efr1))
INCLUDEDIRS += -I$(ROOTDIR)/csi_kernel/freertosv8.2.3/include/cskyv2-l
INCLUDEDIRS += -I$(ROOTDIR)/csi_kernel/freertosv8.2.3/FreeRTOS/Source/portable/GCC/cskyv2-l
CSRC += $(ROOTDIR)/csi_kernel/freertosv8.2.3/FreeRTOS/Source/portable/GCC/cskyv2-l/port.c
SSRC += $(ROOTDIR)/csi_kernel/freertosv8.2.3/FreeRTOS/Source/portable/GCC/cskyv2-l/cpu_task_sw.S
CSRC += $(ROOTDIR)/csi_kernel/freertosv8.2.3/include/cskyv2-l/coretim.c
endif

CSRC += $(ROOTDIR)/csi_kernel/freertosv8.2.3/adapter/csi_freertos.c
CSRC += $(ROOTDIR)/csi_kernel/freertosv8.2.3/FreeRTOS/Source/croutine.c
CSRC += $(ROOTDIR)/csi_kernel/freertosv8.2.3/FreeRTOS/Source/event_groups.c
CSRC += $(ROOTDIR)/csi_kernel/freertosv8.2.3/FreeRTOS/Source/list.c
CSRC += $(ROOTDIR)/csi_kernel/freertosv8.2.3/FreeRTOS/Source/portable/MemMang/heap_4.c
CSRC += $(ROOTDIR)/csi_kernel/freertosv8.2.3/FreeRTOS/Source/queue.c
CSRC += $(ROOTDIR)/csi_kernel/freertosv8.2.3/FreeRTOS/Source/tasks.c
CSRC += $(ROOTDIR)/csi_kernel/freertosv8.2.3/FreeRTOS/Source/timers.c
endif

ifeq ($(KERNEL), ucos3)
INCLUDEDIRS += -I$(ROOTDIR)/csi_kernel/ucos3/include
INCLUDEDIRS += -I$(ROOTDIR)/csi_kernel/ucos3/include/csky
INCLUDEDIRS += -I$(ROOTDIR)/csi_kernel/ucos3/include/lib
INCLUDEDIRS += -I$(ROOTDIR)/csi_kernel/ucos3/include/ucfsinc

ifeq ($(TARGET_CPU), ck610e)
CSRC += $(ROOTDIR)/csi_kernel/ucos3/arch/cskyv1/cpu_core.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/arch/cskyv1/os_cpu_c.c
SSRC += $(ROOTDIR)/csi_kernel/ucos3/arch/cskyv1/os_cpu_a_novic.S
endif
ifeq ($(strip $(TARGET_CPU)),$(filter $(TARGET_CPU), ck807 ck810 ck803er1 ck803f ck803efr1))
CSRC += $(ROOTDIR)/csi_kernel/ucos3/arch/cskyv2-h/cpu_core.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/arch/cskyv2-h/os_cpu_c.c
SSRC += $(ROOTDIR)/csi_kernel/ucos3/arch/cskyv2-h/os_cpu_a_novic.S
endif
ifeq ($(strip $(TARGET_CPU)),$(filter $(TARGET_CPU), ck802 ck803 ck803s ck803er1 ck803f ck803efr1))
CSRC += $(ROOTDIR)/csi_kernel/ucos3/arch/cskyv2-l/cpu_core.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/arch/cskyv2-l/csky_stackbound.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/arch/cskyv2-l/os_cpu_c.c
  ifeq ($(HAVE_VIC), y)
  SSRC += $(ROOTDIR)/csi_kernel/ucos3/arch/cskyv2-l/os_cpu_a.S
  else
  SSRC += $(ROOTDIR)/csi_kernel/ucos3/arch/cskyv2-l/os_cpu_a_novic.S
  endif
endif

CSRC += $(ROOTDIR)/csi_kernel/ucos3/adapter/csi_ucos.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/drivers/bsp.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/lib/clibmisc.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/lib/lib_ascii.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/lib/lib_math.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/lib/lib_mem.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/lib/lib_print.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/lib/lib_str.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/ucos/os_cfg_app.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/ucos/os_core.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/ucos/os_dbg.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/ucos/os_flag.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/ucos/os_int.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/ucos/os_mem.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/ucos/os_msg.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/ucos/os_mutex.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/ucos/os_pend_multi.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/ucos/os_prio.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/ucos/os_q.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/ucos/os_sem.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/ucos/os_stat.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/ucos/os_task.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/ucos/os_tick.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/ucos/os_time.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/ucos/os_tmr.c
CSRC += $(ROOTDIR)/csi_kernel/ucos3/ucos/os_var.c
endif

ifeq ($(HELIX), y)
INCLUDEDIRS += -I$(ROOTDIR)/projects/benchmark/helix/real
INCLUDEDIRS += -I$(ROOTDIR)/projects/benchmark/helix/testwrap
INCLUDEDIRS += -I$(ROOTDIR)/projects/benchmark/helix/pub
endif
