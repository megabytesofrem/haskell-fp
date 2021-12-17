module Sugar where

-- desugared IO action
desugared :: IO ()
desugared = putStrLn "first " >>= \x -> putStrLn "second"

sugar :: IO ()
sugar = do
  putStrLn "first (sugared)" -- IO ()
  putStrLn "second (sugared)" -- IO ()

main :: IO ()
-- >>= passes the result of the previous action to the next action as a lambda
-- to ignore it we can use \_ or >>
main = sugar >> desugared

-- Curried by default
curried :: Integer -> Integer -> Bool
curried x y = x == y

-- Uncurry by using tuple
uncurried :: (Integer, Integer) -> Bool
uncurried (x, y) = x == y

anonCurried :: Integer -> Integer -> Bool
anonCurried = \x y -> x == y