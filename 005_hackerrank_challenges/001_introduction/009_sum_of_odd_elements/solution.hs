f :: Integral a => [a] -> a
f arr = sum $ filter odd arr

-- This part handles the Input/Output and can be used as it is. Do not change or modify it.
main :: IO ()
main = do
   inputdata <- getContents
   print $ f $ map (read :: String -> Int) $ lines inputdata
