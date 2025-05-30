{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }: {
    nixosModules."user-murad" = import ./users/murad.nix;
   
    homeManagerModules = {
      user = import ./modules/home-manager/murad.nix;
    };
  };
}
