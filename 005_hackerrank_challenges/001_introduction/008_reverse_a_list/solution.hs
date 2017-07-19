rev :: [a] -> [a]
rev [] = []
rev [x] = [x]
rev (x:xs) = rev xs ++ [x]

-- Update: Handré made some really good commentary on how the above is pretty
-- inefficient for longer lists, and gave some other good solutions (that I'm
-- unable to fully understand at the moment)
--
-- Over here I'll just leave a link to how the Haskell Prelude defines reverse:
--    http://hackage.haskell.org/package/base-4.9.1.0/docs/src/GHC.List.html#reverse
--

-- Just so that things can run (we're not using the sample provided from the
-- exercise page, since they don't provide code for reading stdin and stdout,
-- and I can't yet write or understand that code without copypasting from
-- other examples:
main :: IO ()
main = print $ rev [1::Int, 2, 3, 4, 5]
