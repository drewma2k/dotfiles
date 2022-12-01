DIR=${PWD}

install: install-configs install-scripts

install-configs:
	ln -sf $(DIR)/configs/oh-my-zsh/* ${HOME}/.oh-my-zsh/custom/
	ln -sf $(DIR)/configs/zshrc ${HOME}/.zshrc
	ln -sf $(DIR)/configs/tmux.conf ${HOME}/.tmux.conf
	ln -sf $(DIR)/configs/rc.conf ${HOME}/.config/ranger/rc.conf

install-scripts:
	cp $(DIR)/bin/standup.sh ${HOME}/bin/standup
	chmod +x ${HOME}/bin/standup
