#! /usr/bin/env nix-shell
#! nix-shell ../../../004_an_updated_nix_shell_file/shell.nix  -i runghc

-- run it locally by doing `cat sample-input.txt | ./solution.hs`

f :: Int -> [Int] -> [Int]
f n arr = filter (<n) arr

-- The Input/Output section. You do not need to change or modify this part
main = do
    n <- readLn :: IO Int
    inputdata <- getContents
    let
        numbers = map read (lines inputdata) :: [Int]
    putStrLn . unlines $ (map show . f n) numbers
