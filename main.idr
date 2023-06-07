module main

main : IO ()
main = do putStrLn "Input your name: "
          name <- getLine
          putStrLn ("Hi, " ++ name ++ "!")