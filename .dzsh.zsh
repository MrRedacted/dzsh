function set_vars {
  ## icon list (icons from Nerd Fonts)
  local glider='⠠⠵ '
  local lambda='λ '
  local debian=' '
  local arch=' '
  local fedora=' '
  local mint=' '
  local kali=' '
  local ferris=' '
  local neovim=' '
  local nix=' '
  local tux=' '
  local rasp=' '
  local cinnamon=' '
  local endeavour=' '
  local locos=' '
  local qubes=' '
  local tor=' '
  local tails=' '
  local gopher=' '
  local golang=' '
  local zig=' '
  local javascript=' '
  local bash=' '
  local html=' '
  local clang=' '
  local radio=' '
  local alma=' '
  local rocky=' '
  local plasma=' '

  ## CHANGE ICON AND COLOR SCHEME HERE
  ## set to an icon variable from above or a custom icon
  DPROMPT_ICON=$tux
  DPROMPT_COLOR_SCHEME='gruvbox'
}

prompt_gruvbox_setup() {
  local newline=$'\n'
  PS1="%F{114}╭─%n@%M %F{220}in %~ %F{109}%*%(?..%F{196}[%?])${newline}%F{114}╰%F{208}${DPROMPT_ICON}%f"
}

prompt_catppuccin_blue_setup() {
  local newline=$'\n'
  PS1="%F{111}╭─%n@%M %F{116}in %~ %F{147}%*%(?..%F{211}[%?])${newline}%F{111}╰%F{216}${DPROMPT_ICON}%f"
}

prompt_catppuccin_green_setup() {
  local newline=$'\n'
  PS1="%F{157}╭─%n@%M %F{229}in %~ %F{111}%*%(?..%F{211}[%?])${newline}%F{157}╰%F{216}${DPROMPT_ICON}%f"
}

prompt_catppuccin_peach_setup() {
  local newline=$'\n'
  PS1="%F{216}╭─%n@%M %F{183}in %~ %F{111}%*%(?..%F{211}[%?])${newline}%F{216}╰%F{116}${DPROMPT_ICON}%f"
}

prompt_term_colors_setup() {
  local newline=$'\n'
  PS1="%F{2}╭─%n@%M %F{3}in %~ %F{4}%*%(?..%F{1}[%?])${newline}%F{2}╰%F{6}${DPROMPT_ICON}%f"
}

prompt_bright_term_colors_setup() {
  local newline=$'\n'
  PS1="%F{10}╭─%n@%M %F{11}in %~ %F{12}%*%(?..%F{9}[%?])${newline}%F{10}╰%F{14}${DPROMPT_ICON}%f"
}

set_vars

autoload -Uz promptinit
promptinit

prompt_themes+=(gruvbox catppuccin_blue catppuccin_green catppuccin_peach term_colors bright_term_colors)

prompt $DPROMPT_COLOR_SCHEME
