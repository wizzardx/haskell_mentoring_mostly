-- Same as solution.hs, but we don't use the builtin filter function.
-- Instead, as recommended, we define our own custom filter function

f :: Int -> [Int] -> [Int]
-- f n arr = filter' (<n) arr
-- eta reduces to:
f n = filter' (<n)

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' g (x:xs) = if g x
                   then x:filter' g xs
                   else filter' g xs

-- The Input/Output section. You do not need to change or modify this part
main :: IO ()
main = do
    n <- readLn :: IO Int
    inputdata <- getContents
    let
        numbers = map read (lines inputdata) :: [Int]
    putStrLn . unlines $ (map show . f n) numbers
