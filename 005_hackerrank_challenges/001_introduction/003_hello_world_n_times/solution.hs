import Control.Monad
import Text.Read

main :: IO ()
main = do
    n_temp <- getLine
    --  Print "Hello World" on a new line 'n' times.
    let e = readEither n_temp :: Either String Int
    case e of
         Left s -> putStrLn $ "Error: Invalid integer input (" ++ n_temp ++ "): " ++ s
         Right n -> replicateM_ n $ putStrLn "Hello World"

