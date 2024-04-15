#
# home-manager switch --impure
#

{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "dmz";
    home.homeDirectory = "/home/dmz";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')

    #
    # shell(s) 
    #

    pkgs.zsh
    pkgs.oh-my-zsh
    pkgs.nushell
    ### fonts
    pkgs.nerdfonts
    pkgs.font-awesome
    pkgs.powerline-fonts

    ### https://github.com/romkatv/powerlevel10k
    pkgs.zsh-powerlevel10k

    #
    # cli/tui sys tools
    #

    ### https://github.com/sharkdp/fd
    pkgs.fd
    ### https://github.com/BurntSushi/ripgrep
    ### rg
    pkgs.ripgrep
    ### https://github.com/nvbn/thefuck
    pkgs.thefuck
    ### https://github.com/wting/autojump
    pkgs.autojump
    ### https://github.com/junegunn/fzf
    pkgs.fzf
    ### https://github.com/ajeetdsouza/zoxide
    pkgs.zoxide
    ### https://github.com/eza-community/eza
    pkgs.eza
    ### https://github.com/sharkdp/bat 
    pkgs.bat
    ### https://code.blicky.net/yorhel/ncdu
    ### https://dev.yorhel.nl/ncdu
    pkgs.ncdu

    ### copy/paste
    pkgs.xclip
    pkgs.xsel

    ### https://github.com/knqyf263/pet
    pkgs.pet
    ### https://github.com/espanso/espanso
    pkgs.espanso
    ### https://github.com/pmachapman/unrar
    pkgs.unar
    ### https://github.com/htop-dev/htop
    pkgs.htop
    ### https://github.com/wtfutil/wtf
    pkgs.wtf
    ### https://github.com/sxyazi/yazi
    pkgs.yazi
    ### https://github.com/dylanaraps/neofetch
    pkgs.neofetch
    ### https://github.com/ansible/ansible
    pkgs.ansible
    ### https://github.com/TizenTeam/dos2unix
    pkgs.dos2unix
    ### https://github.com/facebook/zstd
    pkgs.zstd
    ### https://apps.ankiweb.net/
    pkgs.xz
    ### https://github.com/restic/restic
    pkgs.restic
    ### https://github.com/vifm/vifm
    pkgs.vifm
    ### https://github.com/atuinsh/atuin
    pkgs.atuin
    ### tui https://github.com/sharkdp/hexyl
    pkgs.hexyl
    ### https://github.com/tldr-pages/tldr
    pkgs.tldr
    ### https://github.com/rclone/rclone
    pkgs.rclone
    # https://github.com/Slackadays/clipboard/
    pkgs.clipboard-jh
    ### https://github.com/FiloSottile/age
    pkgs.age
    ### https://github.com/derailed/k9s
    pkgs.k9s
    ### https://github.com/terrastruct/d2
    pkgs.d2

    ### https://github.com/GothenburgBitFactory/taskwarrior
    pkgs.taskwarrior
    ### https://github.com/GothenburgBitFactory/timewarrior
    pkgs.timewarrior
    ### https://github.com/kdheepak/taskwarrior-tui
    pkgs.taskwarrior-tui

    ### https://github.com/ddclient/ddclient
    # pkgs.ddclient

    #
    # dev tools
    #

    ## https://github.com/jqlang/jq
    pkgs.jq
    ### tui https://github.com/noahgorstein/jqp
    pkgs.jqp
    ### https://github.com/mikefarah/yq
    pkgs.yq
    ### https://github.com/carvel-dev/ytt
    pkgs.ytt
    ### https://github.com/BurntSushi/xsv
    pkgs.xsv
    ### https://github.com/neovim/neovim
    ### https://github.com/nvim-lua/kickstart.nvim
    pkgs.neovim
    ### https://github.com/tmux/tmux
    pkgs.tmux
    ### https://github.com/zellij-org/zellij
    pkgs.zellij
    ### https://github.com/AGWA/git-crypt
    pkgs.git-crypt
    pkgs.git
    ### https://github.com/XAMPPRocky/tokei
    pkgs.tokei
    ### https://github.com/openziti/zrok
    pkgs.zrok
    ### https://github.com/nix-community/nix-direnv #todo dmz check
    pkgs.direnv
    ### https://github.com/denisidoro/navi
    pkgs.navi
    ### https://github.com/jesseduffield/lazydocker
    pkgs.lazydocker
    ### https://github.com/wagoodman/dive
    pkgs.dive
    ### https://github.com/jesseduffield/lazygit
    pkgs.lazygit
    ### https://github.com/grafana/k6
    pkgs.k6
    ### https://www.lua.org/
    pkgs.lua
    ### https://diffoscope.org/
    # pkgs.diffoscope
    ### https://github.com/conda/conda
    # $ conda-shell
    # $ conda 
    pkgs.conda

    ### https://github.com/Kitware/CMake
    # pkgs.cmake

    #
    # dev gui
    #
    
    ### https://meldmerge.org/
    pkgs.meld
    # pkgs.neovide

    #
    # media
    #

    ### https://github.com/ImageMagick/ImageMagick
    pkgs.imagemagick

    #
    # others
    #

    ### https://github.com/altdesktop/playerctl
    pkgs.playerctl

    
    # pkgs.glfw #todo dmz - check

    #
    # cloud(s)
    #

    # pkgs.telepresence2
    # pkgs.terraform
    # pkgs.terragrunt

    # pkgs.google-cloud-sdk
    (pkgs.google-cloud-sdk.withExtraComponents [
      pkgs.google-cloud-sdk.components.gke-gcloud-auth-plugin 
      pkgs.google-cloud-sdk.components.kubectl
    ])
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. If you don't want to manage your shell through Home
  # Manager then you have to manually source 'hm-session-vars.sh' located at
  # either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/dmz/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    NIXPKGS_ALLOW_UNFREE = 1;
    NIXPKGS_ALLOW_UNSUPPORTED_SYSTEM = 1;
    # kitty fix slow
    # LIBGL_ALWAYS_SOFTWARE = "true kitty"; 
    USE_GKE_GCLOUD_AUTH_PLUGIN = "True";
    EDITOR = "nvim";
    BROWSER = "chrome";
    TERMINAL = "kitty";
  };

  home.sessionPath = [
    "$HOME/Bin/flutter/bin:$PATH"
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs = {
    atuin = {
      enable = true;
    };

    bash = {
      enable = true;
	    bashrcExtra = ''
	        zsh
		      exit
	    '';
    };

    direnv = {
      enable = true;
      enableBashIntegration = true; # see note on other shells below
      nix-direnv.enable = true;
    };

    zoxide = {
      enable = true;
      enableZshIntegration = true;
    };

    fzf = {
      enable = true;
      enableZshIntegration = true;
    };

	  kitty = {
	    enable = true;
	    font = {
	        name = "Fira Code";
		      package = pkgs.fira-code;
		      size = 13;
	    };
	    settings = {
        allow_remote_control = true;
		    enable_audio_bell = false;
	    };
      keybindings = {
        "alt+1" = "goto_tab 1";
        "alt+2" = "goto_tab 2";
        "alt+3" = "goto_tab 3";
        "alt+4" = "goto_tab 4";
        "alt+5" = "goto_tab 5";
        "alt+6" = "goto_tab 6";
        "alt+7" = "goto_tab 7";
        "alt+8" = "goto_tab 8";
        "alt+9" = "goto_tab 9";
        "alt+0" = "goto_tab 10";
        "alt+b" = "launch --type overlay /home/dmz/Workspace/cz8/notes/bookmarks/lnks.sh";
      };
	    theme = "Everforest Dark Medium";
	  };

    zsh = {
      enable = true;
      enableCompletion = true;
      enableAutosuggestions = true;
      syntaxHighlighting.enable = true;
      autocd = true;

      initExtraBeforeCompInit = ''
        # p10k instant prompt
        P10K_INSTANT_PROMPT="$XDG_CACHE_HOME/p10k-instant-prompt-''${(%):-%n}.zsh"
        [[ ! -r "$P10K_INSTANT_PROMPT" ]] || source "$P10K_INSTANT_PROMPT"
        test -f ~/.p10k.zsh && source ~/.p10k.zsh

        # Preview file content using bat (https://github.com/sharkdp/bat)
        export FZF_CTRL_T_OPTS="
          --preview 'bat -n --color=always {}'
          --bind 'ctrl-/:change-preview-window(down|hidden|)'"

        # CTRL-/ to toggle small preview window to see the full command
        # CTRL-Y to copy the command into clipboard using pbcopy
        export FZF_CTRL_R_OPTS="
          --preview 'echo {}' --preview-window up:3:hidden:wrap
          --bind 'ctrl-/:toggle-preview'
          --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
          --color header:italic
          --header 'Press CTRL-Y to copy command into clipboard'"

        # Print tree structure in the preview window
        export FZF_ALT_C_OPTS="--preview 'tree -C {}'"

        # key bindings
        bindkey "^H" backward-delete-word

        function prev() {
          PREV=$(fc -lrn | head -n 1)
          sh -c "pet new `printf %q "$PREV"`"
        }
        '';

      shellAliases = {
        n = "nvim";
        nn = "cd /home/dmz/Workspace/cz8/notes && code .";
        s = "kitten ssh";
        i = "idea -e";
        nv = "neovide";
        tp = "telepresence";

        fd = "fd --hidden --exclude '.git'";
        rg = "rg --no-ignore --hidden";

        epet = "code ~/.config/pet/snippet.toml";
        ehome = "code ~/.config/home-manager/home.nix";

        pbcopy = "xclip -selection clipboard";
        pbpaste = "xclip -selection clipboard -o";

        curltime = "curl -w \"@$HOME/.curl-format.txt\" -o /dev/null -s ";
        curlip = "curl ifconfig.me";
        watchh = "watch ";

        bat = "batcat --paging=never";
        ls = "eza -l --group-directories-first --color=auto --git --icons --no-permissions --no-user";
        ll = "eza -lahF --group-directories-first --color=auto --git --icons";

        git-summary = "~/Bin/tools/git-summary/git-summary";

        # gssr = "find . -maxdepth 1 -mindepth 1 -type d -exec sh -c '(echo {} && cd {} && git status -s && echo)' \;";
        # gssb = "ls -1 | xargs -i sh -c 'echo -n "\""{}: "\""; git -C "\""{}"\"" name-rev --name-only --no-undefined --always HEAD'";

      };

      history.size = 10000; # using atuin
      history.path = "${config.xdg.dataHome}/zsh/history";

      plugins = [
        {
          name = "powerlevel10k";
          src = pkgs.zsh-powerlevel10k;
          file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
        }
      ];

      oh-my-zsh = {
        enable = true;
        plugins = [ "git" "thefuck" "kubectl" "docker" "common-aliases" "dirhistory" "helm" "history" "web-search" "terraform"];
      };
    };
  };
  fonts.fontconfig.enable = true;
}
