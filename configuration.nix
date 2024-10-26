{ pkgs, lib, inputs, ... }:
{
  # imports = [ <home-manager/nix-darwin> ];
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  users.users.flock = {
    name = "flock";
    home = "/Users/flock";
  };

  # home-manager.users.flock = {pkgs, ... }: {
  #   home.packages = [pkgs.neofetch];
  #   home.stateVersion = "24.05";
  #   programs.zsh.enable = true;
  # };
  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;
  nix.package = pkgs.nix;
}
