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

    emacs-overlay = {
      url = "github:nix-community/emacs-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flake-compat = {
      url = "github:edolstra/flake-compat";
      flake = false;
    };

    flake-registry = {
      url = "github:NixOS/flake-registry";
      flake = false;
    };

    flake-utils.url = "github:numtide/flake-utils";

    goldragonWebpage = {
      url = "github:LiGoldragon/webpage";
      flake = false;
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    jujutsu-el = {
      url = "github:bennyandresen/jujutsu.el";
      flake = false;
    };

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

    nixpkgs = {
      url = "github:criome/nixpkgs/testing";
    };

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

    tera-mode = {
      url = "github:svavs/tera-mode";
      flake = false;
    };

    videocut = {
      url = "github:kanehekili/VideoCut";
      flake = false;
    };

    xah-fly-keys = {
      url = "github:xahlee/xah-fly-keys";
      flake = false;
    };
  };

  outputs = inputs: {
    type = "metaHob";
    value = removeAttrs inputs [ "self" ];
  };
}
