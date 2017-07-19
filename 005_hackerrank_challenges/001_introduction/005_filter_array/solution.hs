
f :: Int -> [Int] -> [Int]
-- f n arr = filter (<n) arr
-- eta reduces to:
f n = filter (<n)

-- The Input/Output section. You do not need to change or modify this part
main :: IO ()
main = do
    n <- readLn :: IO Int
    inputdata <- getContents
    let
        numbers = map read (lines inputdata) :: [Int]
    putStrLn . unlines $ (map show . f n) numbers
