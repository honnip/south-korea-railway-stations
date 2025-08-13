{
  pkgs ? import <nixpkgs> { },
}:
{
  default = pkgs.mkShell {
    packages = with pkgs; [
      (python3.withPackages (
        ps: with ps; [
          openpyxl
        ]
      ))

      ruff
    ];
  };
}
