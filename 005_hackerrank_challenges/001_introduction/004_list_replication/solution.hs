#! /usr/bin/env nix-shell
#! nix-shell ../../../004_an_updated_nix_shell_file/shell.nix  -i runghc

-- run it locally by doing `cat sample-input.txt | ./solution.hs`

f :: Int -> [Int] -> [Int]
-- you could use `concatMap f x` instead of `concat (map f x)` here
f n arr = concat $ map (replicate n) arr

-- This part handles the Input and Output and can be used as it is. Do not modify this part.
main :: IO ()
main = getContents >>=
       mapM_ print. (\(n:arr) -> f n arr). map read. words
