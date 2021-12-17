module DoesItTypecheck where

-- 1.
data Person = Person Bool
  deriving (Show) -- fix: add deriving Show

printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)

-- 2.
data Mood 
    = Blah 
    | Woot
    deriving (Eq, Show) -- fix: add deriving Eq

settleDown x = 
  if x == Woot
    then Blah
    else x

-- 3. 
-- a) Woot and Blah
-- b) It will error since 9 isnt a valid Mood
-- c) Blah > Woot will error since Ord isnt implemented

-- 4.
-- Yes it typechecks
type Subject = String
type Verb = String 
type Object = String

data Sentence = Sentence Subject Verb Object
  deriving (Eq, Show)

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"

-- Which will typecheck?
data Rocks =
  Rocks String deriving (Eq, Show)

data Yeah =
  Yeah Bool deriving (Eq, Show)

data Papu = Papu Rocks Yeah
  deriving (Eq, Show)

--phew = Papu "chases" True -- doesnt typecheck since "chases" != Rocks
truth = Papu (Rocks "chomskydoz") (Yeah True)

equalityForall :: Papu -> Papu -> Bool 
equalityForall p p' = p == p'

comparePapus :: Papu -> Papu -> Bool 
comparePapus = undefined 
-- comparePapus p p' = p > p' -- doesnt typecheck since Papu doesnt derive Ord
