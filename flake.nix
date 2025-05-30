{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }: 
  let
    homeDirectory = "/home/murad";
  in
  {
    nixosModules."user-murad" = import ./modules/nixos/users/murad.nix { homeDirectory = homeDirectory; };
  
    homeManagerModules.user = import ./modules/home-manager/murad.nix { homeDirectory = homeDirectory; };
  };
}
