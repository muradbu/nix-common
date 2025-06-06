{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }: 
  {
    nixosModules."user-murad" = ./modules/nixos/users/murad.nix;
  
    homeManagerModules.user = ./modules/home-manager/murad.nix;
  };
}
