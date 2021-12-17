module Typekwondo where

chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f x y = f x == y

arith :: Num b
      => (a -> b) -- ^ f
      -> Integer  -- ^ x
      -> a        -- ^ y
      -> b

arith f x y = f y