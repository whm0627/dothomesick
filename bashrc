source ~/.shell_prompt.sh

alias tmux="TERM=screen-256color-bce tmux"
alias nomux="killall tmux"
alias remux="tmux; vim +'Tmuxline lightline' +'TmuxlineSnapshot! ~/.tmuxline.conf' +qall! && sleep 1 & nomux; tmux "

