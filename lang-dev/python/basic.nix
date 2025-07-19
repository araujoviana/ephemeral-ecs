{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  buildInputs = [
    pkgs.python312Full
    pkgs.python312Packages.pip
    pkgs.python312Packages.uv
    pkgs.python312Packages.black
    pkgs.python312Packages.isort
    pkgs.python312Packages.flake8
  ];

  shellHook = ''
    echo "Python 3.12 dev environment with uv and tools ready."
  '';
}
