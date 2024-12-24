{
  description = "hob - temporary bootstrap nix flake";

  inputs = {

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

    crane.url = "github:ipetkov/crane";

    devshell = {
      url = "github:numtide/devshell";
      inputs = {
        nixpkgs.follows = "nixpkgs";
      };
    };

    emacs-overlay = {
      url = "github:nix-community/emacs-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
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

    helix = {
      url = "github:helix-editor/helix";
      inputs = {
        crane.follows = "crane";
        nixpkgs.follows = "nixpkgs";
        flake-utils.follows = "flake-utils";
        rust-overlay.follows = "rust-overlay";
      };
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    kibord = {
      url = "github:maisiliym/kibord";
    };

    criome-website.url = "github:criome/website";

    lib = {
      url = "github:criome/lib";
      inputs.nixpkgs.follows = "nixpkgs";
    };

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

    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };

    nixpkgs-lib = {
      url = "github:criome/lib/nestedAttribute";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-fetcher-data = {
      url = "github:jlesquembre/nix-fetcher-data";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        flake-parts.follows = "flake-parts";
      };
    };

    postcss-scss = {
      url = "github:postcss/postcss-scss";
      flake = false;
    };

    rust-overlay = {
      url = "github:oxalica/rust-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
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
