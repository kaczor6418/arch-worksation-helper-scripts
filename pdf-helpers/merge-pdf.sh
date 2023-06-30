#!/bin/sh
#
# merge-pdf [output.pdf] [first.pdf] [second.pdf]
#
# * $1 → output.pdf file name
# * $2... → pdf files to merge
#
# Description:
# Takes many pdf files and merge into one pdf.
# Files will be merged in the same order as given pdf's
#
# Example:
# * merge-pdf merged.pdf first.pdf second.pdf

gs -q -sPAPERSIZE=letter -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile="$1" "${@:1}"
