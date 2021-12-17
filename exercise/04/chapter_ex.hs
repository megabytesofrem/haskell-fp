module Chapter4 where

awesome = ["Papuchon", "curry", ":)"]

also = ["Quake", "The Simons"]

allAwesome = [awesome, also]

-- 1. Given the definition of length above, what would the type signa-
-- ture be? How many arguments, of what type does it take? What is the type of the result it evaluates to?

-- * length :: [a] -> Int

-- 2. What are the results of the following expressions?
-- a) 5
-- b) 3
-- c) 2
-- d) 5

-- 3. 6 / length [1,2,3] returns an error since the length function
-- does not return a Fractional and / is Fractional division.

-- 4. How can you fix the broken code from the preceding exercise using a diﬀerent division function/operator?

-- * Use `div` for integer division

-- 5. What is the type of the expression 2 + 3 == 5?

-- * Bool

-- 6. What is the type and expected result value of the following:
--    let x = 5
--    x + 3 == 5

-- * Bool and False

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = reverse x == x

myAbs :: Integer -> Integer
myAbs x =
  if x < 0
    then negate x
    else x

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = ((snd x, snd y), (fst x, fst y))


-- Correcting syntax
x = (+)
f' xs = x w 1
  where w = length xs

-- id
id' = \x -> x

f'' (a, b) = a