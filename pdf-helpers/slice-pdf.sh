#!/bin/sh
#
# slice-pdf [input.pdf] [start] [end] [output.pdf]
#
# * $1 → input.pdf to slice
# * $2 → start page of sliced pdf (pages index starts from 1)
# * $3 → end page if sliced pdf
# * $4 → name of sliced pdf file
#
# Description:
# Takes input.pdf file and create pdf file from pages described by start and end parameters
#
# Example:
# * Slice one page:   slice-pdf input.pdf 1 1 output.pdf
# * Slice Many pages: slice-pdf input.pdf 1 3 output.pdf

if [ $# -lt 4 ]; then
  echo "Usage: slice-pdf input.pdf start end output.pdf"
  exit 1
fi
gs -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$4" -dFirstPage=$2 -dLastPage=$3 -sDEVICE=pdfwrite "$1"
