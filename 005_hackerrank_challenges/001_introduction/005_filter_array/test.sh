#! /usr/bin/env nix-shell
#! nix-shell ../../../004_an_updated_nix_shell_file/shell.nix -i bash
set -e

SCRIPT=solution.hs
SCRIPT2=solution2.hs

hlint $SCRIPT
cat sample-input.txt | runghc -Wall $SCRIPT

hlint $SCRIPT2
cat sample-input.txt | runghc -Wall $SCRIPT2
