#! /usr/bin/env nix-shell
#! nix-shell ../../../004_an_updated_nix_shell_file/shell.nix  -i runghc

-- Same as solution.hs, but we don't use the builtin filter function.
-- Instead, as recommended, we define our own custom filter function
--
-- run it locally by doing `cat sample-input.txt | ./solution2.hs`

f :: Int -> [Int] -> [Int]
f n arr = filter' (<n) arr

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' g (x:xs) = if g x
                   then x:filter' g xs
                   else filter' g xs

-- The Input/Output section. You do not need to change or modify this part
main = do
    n <- readLn :: IO Int
    inputdata <- getContents
    let
        numbers = map read (lines inputdata) :: [Int]
    putStrLn . unlines $ (map show . f n) numbers
