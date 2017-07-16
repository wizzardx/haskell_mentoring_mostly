f :: [Int] -> [Int]
f lst = go lst
    where go [] = []
          go [x] = []
          go [x,y] = [y]
          go (x:y:zs) = y:go zs

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main = do
   inputdata <- getContents
   mapM_ (putStrLn. show). f. map read. lines $ inputdata
