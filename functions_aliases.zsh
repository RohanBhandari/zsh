#General functions/aliases

function cdl() { cd "$@"; ls; }
function count() { ls "$@" | wc -l ; }
function e() { emacs -nw "$@" ;}
function ero() { emacs -nw "$@" --eval '(setq buffer-read-only t)' ;}
function evin() { evince "$@" & }
function gr() { grep --color -r -i "$@" *; }
#function lat() { pdflatex "%@" ; evin "`basename %@ .tex`.pdf" ; }

alias cdp='cd -P'
alias cp='cp -i'
alias cpf='cp -f'
alias dua='du -hs *'
alias grep='grep --color'
alias hgrep='history | grep '
alias icat='imgcat'
alias la='ls -A'
alias ll='ls -lh'
alias ld='ls -d -- */'
alias mkdir='mkdir -p'
alias pwdp='pwd -P'

#Work functions/aliases
function cmstunnel() {
         klist -t;   
         if [[ $? != 0 ]]; then
             echo "Setting up kerberos..."
             kinit -Af rbhandar@CERN.CH
         fi
	 ssh -t rbhandar@lxplus.cern.ch -L1080:localhost:1080 "ssh -ND 1080 rbhandar@cmsusr"
}
function cmsx() {
	 num="29"
 
	 if [[ $# -gt 0 ]]; then
	    num="$@"
	 fi
 
	 if [[ $HOST == *"cern.ch" || $HOSTNAME == *"lxplus"* || $HOSTNAME == *"compute-0-"* || $HOSTNAME == *"ucsb.edu" ]]; then
	    ssh -XY rohan@cms"$num".physics.ucsb.edu
	 else
	    echo "Tunneling through klong..."
	    ssh -tXY rohan@klong.physics.ucsb.edu ssh -XY cms"$num"
	 fi
}
function hcaldcs() {
	 rdesktop -g 99% -a24 -u rbhandar -d CERN cerntscms.cern.ch
}
function lxplus() { 
	 klist -t; 
	 if [[ $? != 0 ]]; then 
	     echo "Setting up kerberos..."
	     kinit -Af rbhandar@CERN.CH
	 fi
	 ssh -XY rbhandar@lxplus.cern.ch
}
function scpcms() {
	 if [[ $# == 0 ]]; then
	    echo "usage: scpcms <remote_dest> <local_dest="./">"
	 elif [[ $# == 1 ]]; then
	      scp -r rohan@klong.physics.ucsb.edu:$1 ./	 
	 elif [[ $# == 2 ]]; then
	      scp -r rohan@klong.physics.ucsb.edu:$1 $2
	 else [[ $# -gt 2 ]]
	      echo "too many arguments"
	 fi
}
function scplxplus() {
	 klist -t; 
	 if [[ $? != 0 ]]; then 
	     echo "Setting up kerberos..."
	     kinit -Af rbhandar@CERN.CH
	 fi
	 if [[ $# == 0 ]]; then
	    echo "usage: scplxplus <remote_dest> <local_dest="./">"
	 elif [[ $# == 1 ]]; then
	      scp -r rbhandar@lxplus.cern.ch:$1 ./	 
	 elif [[ $# == 2 ]]; then
	      scp -r rbhandar@lxplus.cern.ch:$1 $2
	 else [[ $# -gt 2 ]]
	      echo "too many arguments"
	 fi
}
function scpslides() {
	 if [[ $# == 0 ]]; then
	    echo "usage: scpslides <local_location>"
	 elif [[ $# == 1 ]]; then
	      scp $1 rohan@klong.physics.ucsb.edu:\~/
	      file=$(basename $1) 
	      ssh -t rohan@klong.physics.ucsb.edu ssh cms2 'mv ${file} /slides/'
	 else [[ $# -gt 1 ]]
	      echo "too many arguments"
	 fi	 
}
function setupCrab() {  
	 source /cvmfs/cms.cern.ch/crab3/crab.sh ;  
	 voms-proxy-init --voms cms --valid 168:00 ; 
	 cmsenv ;
 }
function ucsd() {

	 if [[ $HOSTNAME == *"compute-0-"* || $HOSTNAME == *"ucsb.edu" ]]; then
	    ssh -AY rbhandar@uaf-8.t2.ucsd.edu
	 else
	    echo "Tunneling through klong..."
	    ssh -tXY rohan@klong.physics.ucsb.edu ssh -AY rbhandar@uaf-8.t2.ucsd.edu
	 fi
}

alias root='root -l'