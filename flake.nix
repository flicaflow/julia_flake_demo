{
  description = "A very basic flake";

  #inputs.julia.url = "github:flicaflow/julia_flake"; 
  inputs.julia.url = "/home/florian/Code/julia_flake"; 

  outputs = { self, nixpkgs, julia, ... }: {


    packages.x86_64-linux.hello = 
      let 
        pkgs = nixpkgs.legacyPackages.x86_64-linux; 
      in  
      pkgs.callPackage ./build.nix { inherit (julia.lib) buildJulia15Package;};

    defaultPackage.x86_64-linux = self.packages.x86_64-linux.hello;

  };
}
