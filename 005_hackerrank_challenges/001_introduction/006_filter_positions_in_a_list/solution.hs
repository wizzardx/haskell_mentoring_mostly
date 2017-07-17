#! /usr/bin/env nix-shell
#! nix-shell ../../../004_an_updated_nix_shell_file/shell.nix  -i runghc

-- run it locally by doing `cat sample-input.txt | ./solution.hs`

import Data.Maybe (catMaybes)
import Control.Monad

-- I actually like this solution its very simple
-- and based solely on the recursive structure of
-- the list and does exactly what the problem statement
-- requires
f :: [Int] -> [Int]
f [] = []
f [_] = []
f [_,y] = [y]
f (_:y:zs) = y:f zs

-- as a comparison my brain just went
-- for a standard pattern for combining
-- a list with its indexes and using function
-- combinators
g :: [Int] -> [Int]
g =
  catMaybes . -- drop all the `Nothing` values
  zipWith -- combine the list with its indexes
    (\i v ->
       if i `mod` 2 == 0 -- only keep the odd indexes
         then Just v
         else Nothing)
    [(1 :: Int) ..] -- The infinite list of indexes 1 based
    -- This is Eta reduced so the list argument would go here

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main :: IO ()
main = do
   inputdata <- getContents
   let ints = map read. lines $ inputdata
   guard (f ints == g ints)
   mapM_ print (f ints)
