DIR=${PWD}

install:
	# configs
	ln -sf $(DIR)/configs/oh-my-zsh/* ${HOME}/.oh-my-zsh/custom/
	ln -sf $(DIR)/configs/zsh/zshrc ${HOME}/.zshrc
	ln -sf $(DIR)/configs/tmux.conf ${HOME}/.tmux.conf
	ln -sf $(DIR)/configs/rc.conf ${HOME}/.config/ranger/rc.conf
	# scripts
	ln -sf $(DIR)/bin/* ${HOME}/bin
