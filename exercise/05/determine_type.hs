{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

-- a :: Num a => a
a = (*9) 6

-- b :: Num a => (a, String)
b = head [(0, "doge"), (1, "kitteh")]

-- c :: (Integer, String)
c = head [(0 :: Integer, "doge"), (1, "kitteh")]

-- d :: Bool
d = if False then True else False

-- e :: Int
e = length [1,2,3,4,5]

-- f :: Bool
f = (length [1,2,3,4]) > (length "TACOCAT")

-- 2. Given
--    x = 5
--    y = x + 5
--    w = y * 10
-- What is the type of w?
x = 5
y = x + 5
w = y * 10

-- 3. Given
--    x = 5
--    y = x + 5
--    z y = y * 10
-- What is the type of z?
x' = 5
y' = x' + 5
z y = y * 10

-- 3. Given
--    x = 5
--    y = x + 5
--    f = 4 / y
-- What is the type of f?
x'' = 5
y'' = x'' + 5
f' = 4 / y''

x2 = "Julie"
y2 = " <3 "
z2 = "Haskell"
f2 = x2 ++ y2 ++ z2 -- String

-- f :: zed -> Zed -> Blah
--      [0]    [1]    [2]
-- 0: fully polymorphic
-- 1: concrete
-- 2: concrete

-- f :: Enum b => a -> b -> C
--       [0]     [1]  [2]  [3]
-- 0: constrained typeclass (Enum)
-- 1: fully polymorphic
-- 2: fully polymorphic
-- 3: concrete

functionH :: [a] -> a
functionH (x:_) = x

functionC :: Ord a => a -> a -> Bool
functionC x y = 
  if (x > y) then True else False

functionS :: (a, b) -> b
functionS (x, y) = y