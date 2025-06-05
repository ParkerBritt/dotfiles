{ pkgs, ... }:
{
    fonts.packages = with pkgs; [
      # standard fonts
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-emoji
      liberation_ttf
      fira-code
      fira-code-symbols
      mplus-outline-fonts.githubRelease
      dina-font
      proggyfonts

      nerd-fonts.fira-code
      nerd-fonts.droid-sans-mono
      nerd-fonts.hurmit
      nerd-fonts.meslo-lg
      nerd-fonts.jetbrains-mono
    
    ];
}
