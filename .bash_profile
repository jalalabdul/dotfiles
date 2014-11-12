export CLICOLOR=1
export TERM=xterm-256color

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Bash Prompt
#export PS1='\u in \w\n>'
export PS1="\[\e[33;1m\]\u \[\e[0m\]in \[\e[32;1m\]\w \n\[\e[0m\]> \[\e[0m\]"

# Alias
alias ls="ls -la"
