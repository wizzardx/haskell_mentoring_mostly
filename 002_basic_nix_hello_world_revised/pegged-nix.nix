# helper to fetch nix-expression
let fetchFromGitHub = (import <nixpkgs> {}).fetchFromGitHub;
# fetch the nix expression from github at the specified revision
in import
    ( fetchFromGitHub
      {
        owner = "NixOS";
        repo = "nixpkgs";
        rev = "2839b101f927be5daab7948421de00a6f6c084ae";
        sha256 =
          "0a863cc5462gn1vws87d4qn45zk22m64ri1ip67w0b1a9bmymqdh";
      }
    ) {}
