let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
    python312Packages.compiledb # For generating compile_commands.json
    gnumake
    steam-run-free
  ];

  GREETING = "GBDK dev time :)";

  shellHook = ''
    alias run="steam-run"
  '';
}
