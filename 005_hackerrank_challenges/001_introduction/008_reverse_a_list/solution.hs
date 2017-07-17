#! /usr/bin/env nix-shell
#! nix-shell ../../../004_an_updated_nix_shell_file/shell.nix  -i runghc

-- run it locally by doing `cat sample-input.txt | ./solution.hs`

import Data.List (foldl', foldr)
import Control.Monad

rev :: [a] -> [a]
rev [] = []
rev [x] = [x]
 -- the problem here is you are appending
 -- a single element to the back of the list
 -- basically re-traversing the list each time
rev (x:xs) = rev xs ++ [x]

-- this one is the same as rev except it is
-- always doing a prepend to the list
rev1 :: [a] -> [a]
rev1  = go []
  where
    go ys [] = ys
    go ys [x] = x:ys
    go ys (x:xs) = go (x:ys) xs

-- this is essentially the same as rev1 except using
-- a strict left fold instead of explicit recursion
rev2 :: [a] -> [a]
rev2  = foldl' (\xs x -> x:xs) []

-- for comparison an alternative using a lazy fold right
-- Note: Just building the list with foldr would build
-- it in the correct order and not reversed, this tripped
-- me up in the beginning, also foldr is the correct one
-- to use on infinite list not foldl. We are using function
-- composition to build a linear list of prepends in reverse
-- with the initial element being the identity function and
-- at the end we push an empty list through to finish construction
rev3 :: [a] -> [a]
rev3 xs = foldr (\x f-> f . (x:)) id xs []

-- just added this to make it runnable
main :: IO ()
main = do
  inputdata <- getContents
  let ints = map (read :: String -> Int) . lines $ inputdata
      allVersionsTheSame = (rev ints == rev2 ints) && (rev ints == rev3 ints) && (rev ints == rev1 ints)
  guard allVersionsTheSame
  mapM_ print (rev ints)
