include helpdoc.mk

.PHONY: $(d)vim-plugin-update
$(call helpdoc,$(d)vim-plugin-update,Run Vim commands to update Vundle plugins listed in .vimrc.)
$(d)vim-plugin-update:
	vim +:PluginInstall +:qa >/dev/null
