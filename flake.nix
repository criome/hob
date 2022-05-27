{
  description = "hob - temporary bootstrap nix flake";

  inputs = {
    astronauta-nvim = {
      url = github:tjdevries/astronauta.nvim;
      flake = false;
    };

    base16-styles = {
      url = github:samme/base16-styles;
      flake = false;
    };

    base16-theme = {
      url = github:league/base16-emacs;
      flake = false;
    };

    crate2nix = {
      url = github:kolloch/crate2nix;
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

    emacs-overlay = {
      url = github:nix-community/emacs-overlay;
      inputs.nixpkgs.follows = "nixpkgs";
    };

    ement-el = {
      url = github:alphapapa/ement.el;
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

    firn = {
      url = github:maisiliym/firn/main;
      flake = false;
    };

    flake-compat = {
      url = github:edolstra/flake-compat;
      flake = false;
    };

    flake-utils.url = github:numtide/flake-utils;

    FTerm-nvim = {
      url = github:numToStr/FTerm.nvim;
      flake = false;
    };

    home-manager = {
      url = github:nix-community/home-manager;
      flake = false;
    };

    jujutsu = {
      url = github:maisiliym/jj;
      inputs.nixpkgs.follows = "nixpkgs";
    };

    kibord = {
      url = github:maisiliym/kibord;
    };

    librem5-flash-image = {
      type = "gitlab";
      host = "source.puri.sm";
      owner = "Librem5";
      repo = "librem5-flash-image";
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

    netresolve = {
      url = github:crossdistro/netresolve;
      flake = false;
    };

    nix = {
      url = github:/sajban/nix;
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixpkgs.url = github:sajban/nixpkgs/eclipticPlane;
    nextNixpkgs.url = github:sajban/nixpkgs/hangingGarden;

    nixpkgs-mozilla = {
      url = github:mozilla/nixpkgs-mozilla;
      flake = false;
    };

    nvim-base16-lua = {
      url = github:norcalli/nvim-base16.lua;
      flake = false;
    };

    nvim-cursorline = {
      url = github:yamatsum/nvim-cursorline;
      flake = false;
    };

    org-remark = {
      url = github:nobiot/org-remark;
      flake = false;
    };

    page-bird-uniks = {
      url = github:laif-zone/bird;
      flake = false;
    };

    page-maisiliym-uniks = {
      url = github:maisiliym/page.maisiliym.uniks;
      flake = false;
    };

    postcss-scss = {
      url = github:postcss/postcss-scss;
      flake = false;
    };

    pnpm2nix = {
      url = github:LavaDesu/pnpm2nix/next;
      flake = false;
    };

    ql2nix = {
      url = github:SquircleSpace/ql2nix;
      flake = false;
    };

    reseter-css = {
      url = github:resetercss/reseter.css;
      flake = false;
    };

    ron-vim = {
      url = github:ron-rs/ron.vim;
      flake = false;
    };

    sajban = {
      url = github:sajban/sajban;
      flake = false;
    };

    staticSbcl = {
      url = github:daewok/sbcl/static-executable-v2;
      flake = false;
    };

    shen = {
      url = github:sajban/shen;
      flake = false;
    };

    shen-mode = {
      url = github:NHALX/shen-mode;
      flake = false;
    };

    skrips = {
      url = github:maisiliym/skrips;
    };

    species-el = {
      url = github:sajban/species.el;
      flake = false;
    };

    toodoo-el = {
      url = github:ChanderG/toodoo.el;
      flake = false;
    };

    tera-mode = {
      url = github:svavs/tera-mode;
      flake = false;
    };

    tokei-vim = {
      url = github:vmchale/tokei-vim;
      flake = false;
    };

    vim-shen = {
      url = github:nimaai/vim-shen;
      flake = false;
    };

    xah-fly-keys = {
      url = github:xahlee/xah-fly-keys;
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
