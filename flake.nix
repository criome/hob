{
  description = "hob - temporary bootstrap nix flake";

  inputs = {
    arcnmxNixexprs = {
      url = github:arcnmx/nixexprs;
      inputs.nixpkgs.follows = "nixpkgs";
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

    emacs-overlay = {
      url = github:nix-community/emacs-overlay;
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-utils.follows = "flake-utils";
    };

    ement-el = {
      url = github:alphapapa/ement.el;
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

    goldragon.url = github:LiGoldragon/goldragon;

    home-manager = {
      url = github:sajban/home-manager/fix-pueue-empty-settings;
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.utils.follows = "flake-utils";
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
      url = github:LiGoldragon/maisiliym;
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
      url = github:NixOS/nix;
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.nixpkgs-regression.follows = "nixpkgs";
    };

    nixpkgs.url = github:sajban/nixpkgs/itsBedTime;

    nixpkgs-mozilla = {
      url = github:mozilla/nixpkgs-mozilla;
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

    pueue-el = {
      url = github:xFA25E/pueue;
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.emacs-overlay.follows = "emacs-overlay";
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

    toodoo-el = {
      url = github:ChanderG/toodoo.el;
      flake = false;
    };

    tera-mode = {
      url = github:svavs/tera-mode;
      flake = false;
    };

    xah-fly-keys = {
      url = github:xahlee/xah-fly-keys;
      flake = false;
    };
  };

  outputs = inputs@ { self, ... }:
    let
      inherit (builtins) removeAttrs;
      inputsMinusSelf = removeAttrs inputs [ "self" ];

    in
    {
      Hob = inputsMinusSelf;
    };
}
