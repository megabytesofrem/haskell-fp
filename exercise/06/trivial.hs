module Trivial where

data Trivial = Trivial'

-- Eq instance for Trivial'
instance Eq Trivial where
  Trivial' == Trivial' = True

data Identity a = Identity a

-- need to check if Identity a has a Eq constraint itself since we 
-- cant assume it
instance Eq a => Eq (Identity a) where
  (Identity a) == (Identity b) = a == b
