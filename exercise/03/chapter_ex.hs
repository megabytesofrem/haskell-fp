module Chapter3 where

dropFirst :: String -> String
dropFirst = drop 1

exclaim :: String -> String 
exclaim = (++) "!"

firstWordFourthLetter :: String -> Char
firstWordFourthLetter s = head $ words s !! 4

lastWord :: String -> String
lastWord = last . words

thirdLetter :: String -> Char
thirdLetter x = x !! 2

letterIndex :: Int -> Char
letterIndex x = "Curry is awesome" !! x

-- Given: Curry is awesome! return awesome is Curry!
reverse' :: String -> String 
reverse' x = last ws ++ " " ++ (unwords . reverse $ init ws)
  where ws = words x