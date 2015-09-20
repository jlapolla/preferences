include helpdoc.mk

exports :=

$(call helpdoc,$(d)bash/.bashrc,Bash configuration file.)
exports := $(exports) $(d)bash/.bashrc
