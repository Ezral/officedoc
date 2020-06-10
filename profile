#====================================================================================== 
#   BASH CUSTOMIZATION
#======================================================================================
#
# Customizing prompt format and color
export PS1="\e[01;92m\\u@\\H:\e[m \e[01;36m\\W\e[m\\$ " 

#======================================================================================
#   ALIAS
#====================================================================================== 
# Preferred way of using command
alias hi='echo "Hello beautiful world!"'
alias home='cd ~'						            # Shortcut to home folder
alias desktop='cd /Users/medicalagent3/Desktop'		# Shortcut to Desktop folder
alias download='cd /Users/medicalagent3/Downloads'	# Shortcut to Downloads folder
alias application='cd /Applications'				# Shortcut to App folder
alias editp='nano /Users/medicalagent3/.profile'	# Shortcut to edit .profile
alias .='cd .'					    	    	    # Preferred 'cd .' implementation
alias ..='cd ..'			    	    	    	# Preferred 'cd ..' implementation
alias ls='ls -G'		    			        	# Preferred 'ls' implementation
alias c='clear'		    					        # Preferred 'clear' implementation  
alias ll='ls -FGlAhp'                 	 			# Advanced 'ls' implementation
alias lsd='ll | grep "^d"'              			# Advanced 'ls' implementation, only dirs
alias mkdir='mkdir -pv'                  			# Preferred 'mkdir' implementation
alias mv='mv -iv'                         			# Preferred 'mv' implementation
alias jup='jupyter notebook'                       	# Shortcut to Jupyter Notebook 
alias spd='speedtest'			           	      	# Shortcut to speedtest by Ookla
alias webhr='python webhr_login.py'				    # Shortcut to webhr_login.py script
alias gc='git commit'			                    # do git things quicker
alias gco='git checkout' 
alias gd='git diff'
alias gpull='git pull'
alias gpush='git push'
alias gs='git status'
#======================================================================================
#   FUNCTIONS
#======================================================================================
#
# App control & file management

function howto () { 					# open Garg's medium article on .bash_profile
open -a "Google Chrome" https://medium.com/the-data-experience/how-to-bash-de53839f919a; 
echo "Page opened in google chrome.";
}

function bashtutorial () {                                     # open Ryan's tutorial on bash
open -a "Google Chrome" https://ryanstutorials.net/bash-scripting-tutorial/bash-script.php;
echo "Page opened in google chrome.";
}

function trash () { command mv "$@" ~/.Trash; } 	# trash: Move a file to the MacOS trash

function extract () { 					# extract: Extract most known archives
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

function f () {                             		# f: Open file in MacOS Finder. If no file given, open wd
    if [ $# -eq 0 ]; then open -a Finder .;
    else open -a Finder "$@";
    fi;
}
function g () {  		                        # g: Open file in Google Chrome. If no file given, open wd
    if [ $# -eq 0 ]; then open -a Google\ Chrome .;
    else open -a Google\ Chrome "$@";
    fi;
}
function load () {
    echo "Profile changes has been loaded succesfully.";
    source /Users/medicalagent3/.profile;	
}

#====================================================================================
#   POSTGRESS 
#====================================================================================
#export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
#
#====================================================================================
#   BSD LSCOLORS 
#====================================================================================
# preferred LSCOLORS
export CLICOLOR=1
export LSCOLORS=dxexhaDxBxgegcabagacad

#                     The color designators are as follows:
#
#                           a     black
#                           b     red
#                           c     green
#                           d     brown
#                           e     blue
#                           f     magenta
#                           g     cyan
#                           h     light grey
#                           A     bold black, usually shows up as dark grey
#                           B     bold red
#                           C     bold green
#                           D     bold brown, usually shows up as yellow
#                           E     bold blue
#                           F     bold magenta
#                           G     bold cyan
#                           H     bold light grey; looks like bright white
#                           x     default foreground or background
#
#                     Note that the above are standard ANSI colors.  The actual
#                     display may differ depending on the color capabilities of
#                     the terminal in use.
#
#                     The order of the attributes are as follows:
#
#                           1.   directory
#                           2.   symbolic link
#                           3.   socket
#                           4.   pipe
#                           5.   executable
#                           6.   block special
#                           7.   character special
#                           8.   executable with setuid bit set
#                           9.   executable with setgid bit set
#                           10.  directory writable to others, with sticky bit
#                           11.  directory writable to others, without sticky
#                                bit
#                     The default is "exfxcxdxbxegedabagacad" 
#
#====================================================================================== 
# Credit for inspiration: Anmol Garg
# https://medium.com/the-data-experience/how-to-bash-de53839f919a
#====================================================================================== 
