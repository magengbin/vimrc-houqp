.PHONY: update-plugin

update-plugin:
	@echo -e "---[ Updating vim-latex plugin ]---------------------------\n"
	cd ./my-plugin-tree/vim-latex && git pull origin master && git merge master
	git submodule foreach git pull origin master

install:
	git submodule init
	git submodule update
	cd ./bundle && ln -s ../my-plugin-tree/vim-latex/vimfiles vim-latex
	cd ~ && ln -s .vim/.vimrc .vimrc
	cd ~ && ln -s .vim/.gvimrc .gvimrc
