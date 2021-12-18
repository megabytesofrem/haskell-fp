module Chapter7 where

--tensDigit :: Integral a => a -> a
tensDigit :: Integral a => a -> (a, a)
tensDigit x = x `divMod` 10

hunsD :: Integral a => a -> (a, a)
hunsD x = x `divMod` 100

-- case
foldBool :: a -> a -> Bool -> a
foldBool x y z = case z of 
  True -> x
  False -> y

-- guards
-- foldBool2 :: a -> a -> Bool -> a
-- foldBool2 x y z
--   | z == False = x
--   | z == True  = y
--   | z == _     = error "a"

-- pattern matching
foldBool3 :: a -> a -> Bool -> a
foldBool3 x _ False = x
foldBool3 _ y True = y
