
{ pkgs, ... }:

{
  # Python
  languages.python = {
    enable = true;
    package = pkgs.python312;
  };

  # Development tools
  packages = with pkgs; [
    uv
    ruff
    duckdb

    # AWS
    awscli2

    # Infrastructure as Code
    terraform
  ];

  # Native libraries for Python dependencies
  env.LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
    pkgs.stdenv.cc.cc.lib
  ];
}
