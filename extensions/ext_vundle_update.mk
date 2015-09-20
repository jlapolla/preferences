# MODULE EXTENSION
# ext_vundle_update - create Vundle update target at prefix
#
# USAGE
# target_name := $(call ext_vundle_update,[<prefix>])
#
# DESCRIPTION
# Creates target with rule to update Vundle installed at the supplied
# <prefix>. Returns the name of the newly created target.
#
# ARGUMENTS
# <prefix> [OPTIONAL]
# Prefix where existing Vundle installation was installed. <prefix> MUST
# contain a trailing slash.
#
# RETURNS
# The name of the newly created target.
#
# VARIABLES
# $(__ext_vundle_update_template) [PRIVATE]
# Rule template used for creating Vundle update targets.

# Include helpdoc.mk library, if available
-include helpdoc.mk

# Rule template for new Vundle update target
define __ext_vundle_update_template
.PHONY: $(1).vim/bundle/Vundle.vim/update
$(call helpdoc,$(1).vim/bundle/Vundle.vim/update,Update Vundle installation at "$(1).vim/bundle/Vundle.vim". This performs a "git pull" to fetch the latest updates.)
$(1).vim/bundle/Vundle.vim/update: | $(1).vim/bundle/Vundle.vim/README.md
	cd $(1).vim/bundle/Vundle.vim && git pull
endef

# "ext_vundle_update" function definition
ext_vundle_update = $(eval $(call __ext_vundle_update_template,$(1)))$(1).vim/bundle/Vundle.vim/update
