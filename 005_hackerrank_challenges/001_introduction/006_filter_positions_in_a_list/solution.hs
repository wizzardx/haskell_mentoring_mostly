
f :: [Int] -> [Int]
f [] = []
f [_] = []
f [_,y] = [y]
f (_:y:zs) = y:f zs

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main :: IO ()
main = do
   inputdata <- getContents
   mapM_ print. f. map read. lines $ inputdata
