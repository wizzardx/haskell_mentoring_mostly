fn :: Integer -> [Integer]
fn n = [1::Integer .. n]

main :: IO ()
main = print $ fn 5  -- 5 is just any random sample number
