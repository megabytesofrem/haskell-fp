module DayOfWeek where

data DayOfWeek =
  Mon | Tue | Weds | Thu | Fri | Sat | Sun

data Date =
  Date DayOfWeek Int

-- Eq instance
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

-- Our own Ord instance where Friday is always the best day
instance Ord DayOfWeek where
  compare Fri Fri = EQ
  compare Fri _   = GT 
  compare _ Fri   = LT 
  compare _ _     = EQ