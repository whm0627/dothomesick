
#!/bin/bash
export PMR='none';
export OS_NAME='none';
printf "Check OS type ...\t\t"
if which apt-get >/dev/null; then
	PMR='apt-get -y';
	OS_NAME='Ubuntu/Debian'
elif which yum >/dev/null; then
	PMR='yum -y';
	OS_NAME='Centos/RHEL'
elif which brew  >/dev/null; then
	PMR='brew -y';
	OS_NAME='Mac OS X'
fi

echo $OS_NAME;

printf "Check git ...\t\t\t"
if which git >/dev/null; then
	echo "ok";
else
	echo "not found";
	echo "Install git";
	$PMR install git;
fi


if ! which git >/dev/null; then
	echo "Cannot install git via $PMR, you can try to install it manually and come back."
	exit 1;
fi
if [ -d "~/.vim/bundle/vundle" ]; then
	echo "Vundle is installed. Skip";
else
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
fi

# https://github.com/Lokaltog/powerline-fonts
echo "link files ...";
echo "Link vimrc => ~/.vimrc";
if [ -f ~/.vimrc ] && ! [ -f ~/vimrc.bak ];then
	echo ".vimirc found. backed up to vimrc.bak"
	mv ~/.vimrc ~/vimrc.bak
fi
ln -sf ~/.homesick/vimrc ~/.vimrc

#echo "Link vim => ~/.vim";
if [ -d ~/.vim ] && ! [ -d ~/vim.bak ];then
	echo ".vim folder found. backed up to vim.bak"
	mv ~/.vim ~/vim.bak
fi
#ln -sf ~/.homesick/vim ~/.vim

echo "Link vimrc => ~/.vimrc";
if [ -f ~/.tmux.conf ] && ! [ -f ~/tmux.conf.bak ];then
        echo ".tmux.conf found. backed up to tmux.conf.bak"
        mv ~/.tmux.conf ~/tmux.conf.bak
fi
ln -sf ~/.homesick/tmux.conf ~/.tmux.conf



printf "Install Vundle plugins ...\t";
vim +PluginClean +PluginInstall +qall;
vim +qall;
echo "done"

if cat ~/.bashrc | grep "source ~/.homesick/bashrc" > /dev/null; then
	echo "./homesick/bashrc reference exists. skip";
else
	echo "source ~/.homesick/bashrc" >> ~/.bashrc
	echo "added source ~/.homesick/bashrc to ~/.bashrc file";
fi
echo "Source system alias"
shopt -s expand_aliases
source ./aliasrc
echo "Generate Promptline file"
reprompt
if tmux new -d > /dev/null; then
	echo "Tmux is installed. skiped"
else
	echo "install tmux ... \t\t"
	$PMR install tmux
	tmux new -d
fi
sleep 1;
# send command to tmux session
tmux send-key C-z C-c Enter "vim +'Tmuxline lightline full' +'TmuxlineSnapshot! ~/.homesick/tmuxline.conf'" Enter
echo "wait for 3 seconds to make sure the script is done"
sleep 3;
nomux
exec bash
