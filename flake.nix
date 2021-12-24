{
  description = "hob - temporary bootstrap nix flake";

  inputs = {
    aski = {
      url = github:sajban/aski;
    };

    alacritty = {
      url = github:alacritty/alacritty;
      flake = false;
    };

    astronauta-nvim = {
      url = github:tjdevries/astronauta.nvim;
      flake = false;
    };

    barbar-nvim = {
      url = github:romgrk/barbar.nvim;
      flake = false;
    };

    beacon-nvim = {
      url = github:DanilaMihailov/beacon.nvim;
      flake = false;
    };

    base16-alacritty = {
      url = github:aaron-williamson/base16-alacritty;
      flake = false;
    };

    bufferize-vim = {
      url = github:AndrewRadev/bufferize.vim;
      flake = false;
    };

    BufOnly-nvim = {
      url = github:numToStr/BufOnly.nvim;
      flake = false;
    };

    completion-nvim = {
      url = github:nvim-lua/completion-nvim;
      flake = false;
    };

    completion-buffers = {
      url = github:steelsojka/completion-buffers;
      flake = false;
    };

    crate2nix = {
      url = github:kolloch/crate2nix;
      flake = false;
    };

    dino = {
      url = github:dino/dino;
      flake = false;
    };

    dunst = {
      url = github:dunst-project/dunst;
      flake = false;
    };

    dwm-vim = {
      url = github:spolu/dwm.vim;
      flake = false;
    };

    emacs-overlay.url = github:nix-community/emacs-overlay;

    ement-el = {
      url = github:maisiliym/ement.el/mein;
      flake = false;
    };

    express_line-nvim = {
      url = github:tjdevries/express_line.nvim;
      flake = false;
    };

    fenix = {
      url = github:nix-community/fenix;
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flake-compat = {
      url = github:edolstra/flake-compat;
      flake = false;
    };

    flake-utils.url = github:numtide/flake-utils;

    formatter-nvim = {
      url = github:mhartington/formatter.nvim;
      flake = false;
    };

    FTerm-nvim = {
      url = github:numToStr/FTerm.nvim;
      flake = false;
    };

    fzf-lsp-nvim = {
      url = github:gfanto/fzf-lsp.nvim;
      flake = false;
    };

    fzf-vim = {
      url = github:junegunn/fzf.vim;
      flake = false;
    };

    galaxyline-nvim = {
      url = github:glepnir/galaxyline.nvim;
      flake = false;
    };

    gina-vim = {
      url = github:lambdalisue/gina.vim;
      flake = false;
    };

    gitsigns-nvim = {
      url = github:lewis6991/gitsigns.nvim;
      flake = false;
    };

    guile-vim = {
      url = github:HiPhish/guile.vim;
      flake = false;
    };

    home-manager = {
      url = github:nix-community/home-manager;
      flake = false;
    };

    hop-nvim = {
      url = github:phaazon/hop.nvim;
      flake = false;
    };

    kibord = {
      url = github:maisiliym/kibord;
    };

    kommentary = {
      url = github:b3nj5m1n/kommentary;
      flake = false;
    };

    librem5-flash-image = {
      type = "gitlab";
      host = "source.puri.sm";
      owner = "Librem5";
      repo = "librem5-flash-image";
      flake = false;
    };

    lowdown = {
      url = github:kristapsdz/lowdown;
      flake = false;
    };

    lspsaga-nvim = {
      url = github:glepnir/lspsaga.nvim;
      flake = false;
    };

    lsp-status-nvim = {
      url = github:nvim-lua/lsp-status.nvim;
      flake = false;
    };

    LuaFormatter = {
      url = github:Koihik/LuaFormatter;
      flake = false;
    };

    lua-language-server = {
      url = github:sumneko/lua-language-server;
      flake = false;
    };

    maisiliym = {
      url = github:maisiliym/maisiliym;
    };

    mach-nix = {
      url = github:DavHau/mach-nix;
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-utils.follows = "flake-utils";
    };

    mfgtools = {
      url = github:NXPmicro/mfgtools;
      flake = false;
    };

    naersk = {
      url = github:nmattia/naersk;
      flake = false;
    };

    neovim = {
      url = github:neovim/neovim;
      flake = false;
    };

    nix = {
      url = github:/NixOS/nix;
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixpkgs = {
      url = github:NixOS/nixpkgs/e09a539ccbb089769644ca3449e6e3dec946fbca;
    };

    nixpkgs-fmt = {
      url = github:nix-community/nixpkgs-fmt;
      flake = false;
    };

    nixpkgs-mozilla = {
      url = github:mozilla/nixpkgs-mozilla;
      flake = false;
    };

    nvim-autopairs = {
      url = github:windwp/nvim-autopairs;
      flake = false;
    };

    nvim-base16-lua = {
      url = github:norcalli/nvim-base16.lua;
      flake = false;
    };

    nvim-bufferline-lua = {
      url = github:akinsho/nvim-bufferline.lua;
      flake = false;
    };

    nvim-colorizer-lua = {
      url = github:norcalli/nvim-colorizer.lua;
      flake = false;
    };

    nvim-cursorline = {
      url = github:yamatsum/nvim-cursorline;
      flake = false;
    };

    nvim-fzf = {
      url = github:vijaymarupudi/nvim-fzf;
      flake = false;
    };

    nvim-fzf-commands = {
      url = github:vijaymarupudi/nvim-fzf-commands;
      flake = false;
    };

    nvim-lazygit = {
      url = github:kdheepak/lazygit.nvim;
      flake = false;
    };

    nvim-lspconfig = {
      url = github:neovim/nvim-lspconfig;
      flake = false;
    };

    nvim-lspfuzzy = {
      url = github:ojroques/nvim-lspfuzzy;
      flake = false;
    };

    nvim-treesitter = {
      url = github:nvim-treesitter/nvim-treesitter;
      flake = false;
    };

    nvim-treesitter-context = {
      url = github:romgrk/nvim-treesitter-context;
      flake = false;
    };

    nvim-treesitter-refactor = {
      url = github:nvim-treesitter/nvim-treesitter-refactor;
      flake = false;
    };

    nvim-treesitter-textobjects = {
      url = github:nvim-treesitter/nvim-treesitter-textobjects;
      flake = false;
    };

    nvim-tree-lua = {
      url = github:kyazdani42/nvim-tree.lua;
      flake = false;
    };

    nvim-web-devicons = {
      url = github:kyazdani42/nvim-web-devicons;
      flake = false;
    };

    lir-nvim = {
      url = github:tamago324/lir.nvim;
      flake = false;
    };

    neogit = {
      url = github:TimUntersberger/neogit;
      flake = false;
    };

    plenary-nvim = {
      url = github:nvim-lua/plenary.nvim;
      flake = false;
    };

    popup-nvim = {
      url = github:nvim-lua/popup.nvim;
      flake = false;
    };

    ql2nix = {
      url = github:SquircleSpace/ql2nix;
      flake = false;
    };

    rnix-lsp = {
      url = github:nix-community/rnix-lsp;
      flake = false;
    };

    ron-vim = {
      url = github:ron-rs/ron.vim;
      flake = false;
    };

    rust-analyzer = {
      url = github:rust-analyzer/rust-analyzer;
      flake = false;
    };

    sajban = {
      url = github:sajban/sajban;
      flake = false;
    };

    sbcl = {
      url = github:daewok/sbcl/static-executable-v2;
      flake = false;
    };

    shen = {
      url = github:maisiliym/shen;
      flake = false;
    };

    shen-mode = {
      url = github:NHALX/shen-mode;
      flake = false;
    };

    skrips = {
      url = github:maisiliym/skrips;
    };

    telescope-nvim = {
      url = github:nvim-lua/telescope.nvim;
      flake = false;
    };

    tokei-vim = {
      url = github:vmchale/tokei-vim;
      flake = false;
    };

    tree-sitter = {
      url = github:tree-sitter/tree-sitter;
      flake = false;
    };

    tree-sitter-nix = {
      url = github:cstrahan/tree-sitter-nix;
      flake = false;
    };

    tree-sitter-rust = {
      url = github:tree-sitter/tree-sitter-rust;
      flake = false;
    };

    vim-shen = {
      url = github:nimaai/vim-shen;
      flake = false;
    };

    vim-visual-multi = {
      url = github:mg979/vim-visual-multi;
      flake = false;
    };

    xah-fly-keys = {
      url = github:xahlee/xah-fly-keys;
      flake = false;
    };

    zoxide = {
      url = github:ajeetdsouza/zoxide;
      flake = false;
    };

    zoxide-vim = {
      url = github:nanotee/zoxide.vim;
      flake = false;
    };

  };

  outputs = inputs@ { self, ... }:
    let
      inherit (builtins) mapAttrs removeAttrs getFlake
        concatStringsSep;

      optionalString = cond: string: if cond then string else "";

      getFleik = fleik:
        let
          url = concatStringsSep "" [
            (optionalString (fleik.type == "git") "git+")
            fleik.url
            "?"
            (optionalString (fleik ? ref) "ref=${fleik.ref}")
            (optionalString (fleik ? rev) "${optionalString (fleik ? ref) "&"}rev=${fleik.rev}")
          ];
          noFlakeNix = fleik ? flake && (!fleik.flake);
          kol = if noFlakeNix then fetchTree else getFlake;
        in
        kol url;

      meinIndeks = removeAttrs inputs [ "self" ];

      forkIndeks = (import ./forkIndeks.nix) getFleik;

      meikBrencyz = neim: fleik:
        let forks = forkIndeks.${neim} or { };
        in forks // { mein = fleik; };

      ryzylt = mapAttrs meikBrencyz meinIndeks;

    in
    { Hob = ryzylt; };
}
