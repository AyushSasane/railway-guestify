FROM nixos/nix:latest

RUN nix-env -iA nixpkgs.python39

RUN ln -s /nix/store/*-python3-3.9*/bin/python3 /usr/local/bin/python3

COPY .nixpacks/nixpkgs-bf744fe90419885eefced41b3e5ae442d732712d.nix .nixpacks/nixpkgs-bf744fe90419885eefced41b3e5ae442d732712d.nix

RUN nix-env -if .nixpacks/nixpkgs-bf744fe90419885eefced41b3e5ae442d732712d.nix && nix-collect-garbage -d
