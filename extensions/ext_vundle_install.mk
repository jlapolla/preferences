# MODULE EXTENSION
# ext_vundle_install - create Vundle installation target at prefix
#
# USAGE
# target_name := $(call ext_vundle_install,[<prefix>])
#
# DESCRIPTION
# Creates target with rule to install Vundle at the supplied <prefix>.
# Returns the name of the newly created target.
#
# ARGUMENTS
# <prefix> [OPTIONAL]
# Prefix where Vundle should be installed. <prefix> MUST contain a
# trailing slash.
#
# RETURNS
# The name of the newly created target.
#
# VARIABLES
# $(__ext_vundle_install_template) [PRIVATE]
# Rule template used for creating Vundle installation targets.
# $(__ext_vundle_install_template) is a function that is called, and
# then $(eval)'d to create a new Vundle installation target.
#
# $(__ext_vundle_install_comma) [PRIVATE]
# Contains a comma (,) character.

# Include helpdoc.mk library, if available
-include helpdoc.mk

# Store "," character
__ext_vundle_install_comma := ,

# Rule template for new Vundle installation target
define __ext_vundle_install_template
$(call helpdoc,$(1).vim/bundle/Vundle.vim/README.md,Install Vundle under "$(1).vim" prefix. Vundile is a Vim plugin manager. README.md is used to detect if Vundle is already installed.)
$(1).vim/bundle/Vundle.vim/README.md:
	mkdir -p $(1).vim/bundle
	git clone --depth 1 'https://github.com/VundleVim/Vundle.vim.git' $(1).vim/bundle/Vundle.vim
endef

# "ext_vundle_install" function definition
ext_vundle_install = $(eval $(call __ext_vundle_install_template,$(1)))$(1).vim/bundle/Vundle.vim/README.md
