# Aider Environment

This utilizes Nix flakes and direnv to automate.  Just go into the environment directory, it will install `aider` if it is not already installed, and output if there is an upgrade available.

Modify the nix packages input URL to upgrade to the latest python and git, and optionally modify the version of `aider` that is pinned in the `.envrc` file.
