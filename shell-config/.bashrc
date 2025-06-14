#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
source /usr/share/nvm/init-nvm.sh

# Custom Alias

# merge-pdf, accept listf of pdf's to merge and creates merge.pdf
# Example: merge-pdf [first.pdf] [second.pdf]
alias merge-pdf='gs -q -sPAPERSIZE=letter -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile='

# slice-pdf, accept pdf file and slice from start to end page and creates output .pdf file with sliced pages
# Example: slice-pdf [start-page] [end-page] [output.pdf]
alias split-pdf='
if [ $# -lt 4 ] 
then
        echo "Usage: pdfsplit input.pdf first_page last_page output.pdf"
        exit 1
fi
gs -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$4" -dFirstPage=$2 -dLastPage=$3 -sDEVICE=pdfwrite "$1"
'
