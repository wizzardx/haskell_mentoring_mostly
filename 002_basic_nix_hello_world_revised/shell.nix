let
  pkgs = import ./pegged-nix.nix ;
in import ./default.nix {inherit (pkgs) stdenv fetchurl;}
