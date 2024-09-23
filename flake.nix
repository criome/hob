{
  description = "hob - temporary bootstrap nix flake";

  inputs = {
    arcnmxNixexprs = {
      url = "github:arcnmx/nixexprs";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    base16-styles = {
      url = "github:samme/base16-styles";
      flake = false;
    };

    base16-theme = {
      url = "github:league/base16-emacs";
      flake = false;
    };

    clj-nix = {
      url = "github:jlesquembre/clj-nix";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        devshell.follows = "devshell";
        nix-fetcher-data.follows = "nix-fetcher-data";
      };
    };

    clojure-lsp = {
      url = "github:clojure-lsp/clojure-lsp";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        flake-utils.follows = "flake-utils";
        clj-nix.follows = "clj-nix";
      };
    };

    devshell = {
      url = "github:numtide/devshell";
      inputs = {
        nixpkgs.follows = "nixpkgs";
      };
    };

    eldev = {
      url = "github:doublep/eldev";
      flake = false;
    };

    emacs-overlay = {
      url = "github:nix-community/emacs-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-utils.follows = "flake-utils";
    };

    ement-el = {
      url = "github:alphapapa/ement.el";
      flake = false;
    };

    flake-compat = {
      url = "github:edolstra/flake-compat";
      flake = false;
    };

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs-lib";
    };

    flake-registry = {
      url = "github:NixOS/flake-registry";
      flake = false;
    };

    flake-utils.url = "github:numtide/flake-utils";

    goldragon.url = "github:LiGoldragon/goldragon";

    goldragonWebpage = {
      url = "github:LiGoldragon/webpage";
      flake = false;
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    kibord = {
      url = "github:maisiliym/kibord";
    };

    criome-website.url = "github:criome/website";

    lojix = {
      url = "github:criome/lojix";
      flake = false;
      inputs = {
        nixpkgs.follows = "nixpkgs";
        flake-utils.follows = "flake-utils";
        clj-nix.follows = "clj-nix";
      };
    };

    maisiliym = {
      url = "github:LiGoldragon/maisiliym";
    };

    md-roam = {
      url = "github:nobiot/md-roam";
      flake = false;
    };

    mfgtools = {
      url = "github:NXPmicro/mfgtools";
      flake = false;
    };

    mkZolaWebsite.url = "github:criome/mkZolaWebsite";

    ndi = {
      url = "github:LiGoldragon/ndi";
      flake = false;
    };

    nix = {
      url = "github:NixOS/nix";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.nixpkgs-regression.follows = "nixpkgs";
    };

    nixpkgs = { url = "github:NixOS/nixpkgs/nixos-unstable"; };

    nixpkgs-lib = {
      url = "github:criome/lib/nestedAttribute";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixpkgs-master = { type = "indirect"; id = "nixpkgs-master"; };

    nixpkgs-mozilla = {
      url = "github:mozilla/nixpkgs-mozilla";
      flake = false;
    };

    nvfetcher.url = "github:berberman/nvfetcher";

    nix-fetcher-data = {
      url = "github:jlesquembre/nix-fetcher-data";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        flake-parts.follows = "flake-parts";
      };
    };

    page-maisiliym-uniks = {
      url = "github:maisiliym/page.maisiliym.uniks";
      flake = false;
    };

    postcss-scss = {
      url = "github:postcss/postcss-scss";
      flake = false;
    };

    pueue-el = {
      url = "github:xFA25E/pueue";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        emacs-overlay.follows = "emacs-overlay";
        eldev.follows = "eldev";
      };
    };

    ql2nix = {
      url = "github:SquircleSpace/ql2nix";
      flake = false;
    };

    sajban = {
      url = "github:criome/sajban";
      flake = false;
    };

    seahawk.url = "github:criome/seahawk";

    seahawkWebsite = {
      url = "github:AnaSeahawk/website";
      flake = false;
    };

    staticSbcl = {
      url = "github:daewok/sbcl/static-executable-v2";
      flake = false;
    };

    shen = {
      url = "github:criome/shen";
      flake = false;
    };

    shen-mode = {
      url = "github:NHALX/shen-mode";
      flake = false;
    };

    skrips = {
      url = "github:maisiliym/skrips";
    };

    tdlib = {
      url = "github:tdlib/td";
      flake = false;
    };

    telega-el = {
      url = "github:zevlg/telega.el";
      flake = false;
    };

    toodoo-el = {
      url = "github:ChanderG/toodoo.el";
      flake = false;
    };

    tera-mode = {
      url = "github:svavs/tera-mode";
      flake = false;
    };

    systems.url = "github:nix-systems/default";
    systems-linux.url = "github:nix-systems/default-linux";

    videocut = {
      url = "github:kanehekili/VideoCut";
      flake = false;
    };

    xah-fly-keys = {
      url = "github:xahlee/xah-fly-keys";
      flake = false;
    };

    xdg-desktop-portal-hyprland = {
      url = "github:hyprwm/xdg-desktop-portal-hyprland";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        systems.follows = "systems-linux";
      };
    };
  };

  outputs = inputs: {
    type = "metaHob";
    value = removeAttrs inputs [ "self" ];
  };
}
