
{ pkgs, config, ... }:

{
  home.username = "murad";
  home.homeDirectory = "/home/murad";

  home.packages = with pkgs; [
  ];

  programs.git = {
    enable = true;
    userName = "Murad Buyukasik";
    userEmail = "10285764+muradbu@users.noreply.github.com";
  };

  programs.bash.enable = true;

  programs.fzf = {
    enable = true;
    enableBashIntegration = true;
  };

  programs.z-lua = {
    enable = true;
    enableBashIntegration = true;
    options = [ "fzf" ];
  };

  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}
