module MoodSwing where

data Mood = Blah | Woot
  deriving Show

-- 1. type constructor is Mood
-- 2. Blah or Woot
-- 3. Woot is not a type constructor

changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood _ = Blah