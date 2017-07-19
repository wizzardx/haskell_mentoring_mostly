#! /usr/bin/env nix-shell
#! nix-shell ../../../004_an_updated_nix_shell_file/shell.nix -i bash
set -e

SCRIPT=solution.hs

hlint $SCRIPT
runghc -Wall $SCRIPT
