{
  description = "Aider environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/d68746a3c4ccce698285e1f7a4760a61a756ff47";
    flake-utils.url = "github:numtide/flake-utils";

  };

  outputs = { self, nixpkgs, flake-utils, ... }@inputs:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            git
            python3
          ];
        };
      }
    );
}
