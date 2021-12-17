module Trivial where

data Trivial = Trivial'

-- Eq instance for Trivial'
instance Eq Trivial where
  Trivial' == Trivial' = True

data DayOfWeek =
  Mon | Tue | Weds | Thu | Fri | Sat | Sun

data Date =
  Date DayOfWeek Int

instance Eq DayOfWeek where
  (==) Mon Mon = True
  (==) Tue Tue = True
  (==) Weds Weds = True
  (==) Thu Thu = True
  (==) Fri Fri = True
  (==) Sat Sat = True
  (==) Sun Sun = True
  (==) _ _ = False

instance Eq Date where
  (Date weekday dom) == (Date weekday' dom') =
    weekday == weekday' && dom == dom'

data Identity a = Identity a

-- need to check if Identity a has a Eq constraint itself since we 
-- cant assume it
instance Eq a => Eq (Identity a) where
  (Identity a) == (Identity b) = a == b