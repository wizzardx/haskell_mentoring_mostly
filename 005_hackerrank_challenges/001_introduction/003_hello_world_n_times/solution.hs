
import Control.Monad

main :: IO ()
main = do
    n_temp <- getLine
    -- just a note these things are fine in experimental test code
    -- but be aware that `read` is partial and will throw an `error`
    -- if it can't parse the value. You can use `readMaybe` from
    -- `Text.Read` instead. You can type the type signature of what
    -- kind of function you are looking for into hoogle like so
    -- `Read a => String -> Maybe a`
    let n = read n_temp :: Int
    --  Print "Hello World" on a new line 'n' times.
    replicateM_ n $ putStrLn "Hello World"


