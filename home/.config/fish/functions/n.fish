function n --description 'run program via `nix run`'
  nix run "nixos.$argv[1]" -c $argv[1..(count $argv)]
end
