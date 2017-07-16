rev l = go l
    where go [] = []
          go [x] = [x]
          go (x:xs) = (go xs) ++ [x]
