--Only fill up the blanks for the function named len
--Do not modify the structure of the template in any other way
len :: [a] -> Int

-- len [] = 0
-- len (x:xs) = 1 + len xs

-- hlint converts the above to:
-- len xs = foldr (\ x -> (+) 1) 0 xs

-- hlint eta reduces the above to:
len = foldr (\ _ -> (+) 1) 0

-- Just something to test our length function:
main :: IO ()
main = print $ len "1234567"
