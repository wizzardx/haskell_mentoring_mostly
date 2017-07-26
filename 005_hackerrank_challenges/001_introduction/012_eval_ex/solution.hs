import Control.Monad

ex :: Int -> Double -> Double
ex 0 _ = 1
ex n x = ((x ** fromIntegral n) / fromIntegral (factorial n)) + ex (n - 1) x

factorial :: (Eq t, Num t) => t -> t
factorial 1 = 1
factorial n = n * factorial (n - 1)

main :: IO ()
main = do
  n_temp <- getLine
  let n = read n_temp :: Int
  forM_ [1 .. n] $ \_ -> do
    x_temp <- getLine
    let x = read x_temp :: Double
    print $ ex n x
  error "TODO: Finish testing and implementing this..."
