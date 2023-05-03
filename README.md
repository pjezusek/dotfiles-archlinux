# Dotfiles for archlinux

## Softwares

- Core:
  - mlocate - locate files in the whole system (`pacman -S mlocate`)
  - base-devel - base tools for building (`pacman -S base-devel`)
  - fuse2 - allows to launch appimages (`pacman -S fuse2`)
  - fonts - ttf-firacode-nerd (`pacman -S ttf-firacode-nerd`)
- Terminal:
  - yay - allows to install packages from AUR
    - `git clone https://aur.archlinux.org/yay.git`
    - `cd yay`
    - `makepkg -si`
  - kitty - terminal (`pacman -S base-devel`)
  - tmux - terminal multiplexer (`pacman -S tmux`)
    - tpm - plugins manager (`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`)
  - neovim - text editor (`pacman -S base-devel`)
    - `curl -L https://github.com/neovim/neovim/releases/latest/download/nvim.appimage -o /bin/nvim`
    - `chmod +x /bin/nvim`
  - git - version control system (`pacman -S git`)
  - bat - alternative for cat p(`pacman -S bat`)
  - htop - process monitor (`pacman -S htop`)
  - exa - alternative for ls (`pacman -S exa`)
  - the_silver_searcher - fuzzy searcher (`pacman -S the_silver_searcher`)
  - ripgrep - fuzzy searcher (`pacman -S ripgrep`)
  - lazygit - gui for git (`pacman -S lazygit`)
  - delta - a viewer for git and diff output (`pacman -S git-delta`)
  - fd - better find for files (`pacman -S fd`)
  - fish - shell (`pacman -S fish`)
    - fisher - plugins manager (`curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher`)
    - plugins
        - `fisher install jorgebucaran/fisher`
        - `fisher install jethrokuan/z`
        - `fisher install jorgebucaran/nvm.fish`
        - `fisher install PatrickF1/fzf.fish`
  - ranger - file manager (`pacman -S ranger`)
    - addons (`pacman -S atool elinks ffmpegthumbnailer highlight imagemagick libcaca lynx mediainfo odt2txt perl-image-exiftool poppler`)
    - icons (`git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons`)
  - xrandr - monitors manager (`pacman -S xorg-xrandr`)
  - neofetch - pretty computer info (`pacman -S neofetch`)
  - fzf - fuzzy search (`pacman -S fzf`)
- GUI
  - xorg-server - X Window System (`pacman -S xorg-server`)
  - xorg-xinit - init scripts for xorg (`pacman -S xorg-xinit`)
  - i3-gaps - windows manager with gaps (`pacman -S i3-gaps`)
  - i3status - status bar for i3 (`pacman -S i3status`)
  - rofi - menu (`pacman -S rofi`)
  - pulseaudio - manage sound (`pacman -S pulseaudio`)
  - nm-applet - manage sound (`pacman -S network-manager-applet`)
  - dunst - notification (`pacman -S dunst`)
  - picom - compositor (`pacman -S dunst`)
  - blueman - bluetooth manager (`pacman -S blueman`)
- Office:
  - thunderbird - email client (`pacman -S thunderbird`)
  - gimp - image editor (`pacman -S gimp`)
  - libreoffice - office package (`pacman -S fd`)
  - miro - projects board (`yay -S miro`)
- Utils:
  - keepassxc - password manager (`pacman -S keepassxc`)
  - nextcloud-client - client for nextcloud (`pacman -S nextcloud-client`)
  - filezilla - gui for ftp/sftp (`pacman -S filezilla`)
  - remmina - remote desktops (`pacman -S remmina`)
  - flameshot - print screener (`pacman -S flameshot`)
- Browsers:
  - firefox (`pacman -S firefox`)
  - google-chrome (`yay -S google-chrome`)
- Contact:
  - discord (`pacman -S discord`)
  - slack (`yay -S slack-desktop`)
- Development:
  - rvm (`curl -sSL https://get.rvm.io | bash -s stable`)
  - nvm (`curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash`)
  - python
  - nodejs
  - yarn
  - docker
  - docker-compose
- Gems:
  - teamocil (https://github.com/pjezusek/teamocil/tree/join-commands-by-enter) - tmux supporter
  - overcommit - git hooks manager
  - solargraph - lsp for ruby
  - rubocop - linter for ruby
  - guard - file listener
  - guard-rspec - plugin for guard
- Pips:
  - pandas-stubs
  - flake8
  - pyright
  - mypy
- Javascript libs:
  - hygen
