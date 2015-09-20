# MODULE EXTENSION
# ext_vundle_plugininstall - create .PHONY target to update Vundle
# plugins
#
# USAGE
# $(call ext_vundle_plugininstall,<target_name>)
#
# DESCRIPTION
# Creates a target that runs Vim to update Vundle plugins configured in
# .vimrc.
#
# ARGUMENTS
# <target_name>
# The name of the target to create.
#
# RETURNS
# Empty string.
#
# VARIABLES
# $(__ext_vundle_plugininstall_template)
# Rule template for creating new targets.

# Include helpdoc.mk, if available
-include helpdoc.mk

# Rule template for new Vundle PluginInstall target
define __ext_vundle_plugininstall_template
.PHONY: $(1)
$(call helpdoc,$(1),Run Vim to update Vundle plugins listed in .vimrc.)
$(1):
	vim '+:PluginInstall' '+:qa' >/dev/null
endef

# "ext_vundle_plugininstall" function definition
ext_vundle_plugininstall = $(eval $(call __ext_vundle_plugininstall_template,$(1)))
