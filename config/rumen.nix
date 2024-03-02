{pkgs, ...}:
{
  # Import all your configuration modules here
  imports = [
    ./plugins/plugins.nix
    ./set.nix
    ./keymaps.nix
  ];
}
