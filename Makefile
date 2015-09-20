include helpdoc.mk

exports :=

$(call helpdoc,$(d)bash/.bashrc,Bash configuration file. Copy this file to your home directory.)
exports := $(exports) $(d)bash/.bashrc

$(call helpdoc,$(d)git/.gitconfig,Global Git configuration file. Copy this file to your home directory.)
exports := $(exports) $(d)git/.gitconfig
$(call helpdoc,$(d)git/.gitignore_global,Global .gitignore file. Copy this file to your home directory.)
exports := $(exports) $(d)git/.gitignore_global

$(call helpdoc,$(d)vim/.vimrc,Vim configuration file. Copy this file to your home directory.)
exports := $(exports) $(d)vim/.vimrc

.PHONY: $(d)vim-plugin-update
$(call helpdoc,$(d)vim-plugin-update,Run Vim commands to update Vundle plugins listed in .vimrc.)
$(d)vim-plugin-update:
	vim +:PluginInstall +:qa >/dev/null
