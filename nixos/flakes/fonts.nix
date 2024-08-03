{ pkgs, ... }:
{
    fonts.packages = with pkgs; [
      # standard fonts
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
      liberation_ttf
      fira-code
      fira-code-symbols
      mplus-outline-fonts.githubRelease
      dina-font
      proggyfonts
    
      # nerdfonts
      (nerdfonts.override { fonts = [
        "FiraCode"
        "DroidSansMono"
        "Hermit"
        "Meslo"
        "JetBrainsMono"
      ];})
    ];
}
