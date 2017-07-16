-- Same as solution.hs, but we don't use the builtin filter function.
-- Instead, as recommended, we define our own custom filter function

f :: Int -> [Int] -> [Int]
f n arr = filter' (<n) arr

filter' :: (a -> Bool) -> [a] -> [a]
filter' f [] = []
filter' f (x:xs) = if (f x)
                   then x:filter' f xs
                   else filter' f xs

-- The Input/Output section. You do not need to change or modify this part
main = do
    n <- readLn :: IO Int
    inputdata <- getContents
    let
        numbers = map read (lines inputdata) :: [Int]
    putStrLn . unlines $ (map show . f n) numbers
