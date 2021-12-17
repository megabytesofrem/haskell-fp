module Chapter5 where

f :: a -> a -> a
f a b = a
--f a b = b

g :: a -> b -> b
g a b = b

-- Write types for functions
i :: a -> a 
i = \x -> x

c :: a -> b -> a
c a b = a

-- same as c becuase of alpha equivalence
c'' :: b -> a -> b
c'' b a = b 

c' :: a -> b -> b
c' a b = b

r :: [a] -> [a]
r = tail -- r = reverse

co :: (b -> c) -> (a -> b) -> a -> c
co bc ab a = bc (ab a)

a :: (a -> c) -> a -> a
a ac a = a

a' :: (a -> b) -> a -> b
a' ab a = ab a