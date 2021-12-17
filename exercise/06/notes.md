- Typeclasses are similar to Rust `traits`

## Eq
We only need to provide an implementation of `(==)` since `(/=)` can be inferred

```hs
class Eq a where
  (==) :: a -> a -> Bool
  (/=) :: a -> a -> Bool

-- instances
instance Eq a => Eq [a] -- [a] is any polymorphic type
instance Eq Ordering
instance Eq Int
instance Eq Float
instance Eq Char
instance Eq Bool
instance (Eq a, Eq b) => Eq (a, b)
```

## Ord
Ord is a typeclass for things that can be *ordered*. It's *minimal* definition is `<=` or `compare`.
```hs
-- full definition
class Eq a => Ord a where
  compare :: a -> a -> Ordering
  (<) :: a -> a -> Bool
  (<=) :: a -> a -> Bool
  (>) :: a -> a -> Bool
  (>=) :: a -> a -> Bool
  max :: a -> a -> a
  min :: a -> a -> a

  --{-# MINIMAL compare | (<=) #-}
```