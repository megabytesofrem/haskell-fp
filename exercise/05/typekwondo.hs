module Typekwondo where

f :: Int -> String
f i = show i

g :: String -> Char
g (x:_) = x

h :: Int -> Char
h i = head . show $ i

-- 2.
data A
data B
data C

q :: A -> B
q = undefined 

w :: B -> C
w = undefined 

e :: A -> C
e a = w $ q a 

-- 3.
data X
data Y
data Z

xz :: X -> Z
xz = undefined 

yz :: Y -> Z
yz = undefined 

xform :: (X, Y) -> (Z, Z)
xform (x,y) = (xz x, yz y)

-- 4.
munge :: (x -> y) -- ^ f
      -> (y -> (w, z)) -- ^ g
      -> x -- ^ x
      -> w
munge f g x = fst $ g $ f x
