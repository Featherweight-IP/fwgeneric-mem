FWGENERIC_MEM_VERILOG_RTLDIR:=$(abspath $(dir $(lastword $(MAKEFILE_LIST))))

ifneq (1,$(RULES))

ifeq (,$(findstring $(FWGENERIC_MEM_VERILOG_RTLDIR),$(MKDV_INCLUDED_DEFS)))
MKDV_INCLUDED_DEFS += $(FWGENERIC_MEM_VERILOG_RTLDIR)
FWGENERIC_MEM_TARGET ?= sim

MKDV_VL_SRCS += $(wildcard $(FWGENERIC_MEM_VERILOG_RTLDIR)/$(FWGENERIC_MEM_TARGET)/*.v)

endif

else # Rules

endif

