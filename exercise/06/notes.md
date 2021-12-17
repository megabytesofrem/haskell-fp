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

Ord **implies** Eq, Eq is a superclass of Ord. Its definition is:
```hs
-- for a to be a valid Ord, it must also have an instance of Eq typeclass
class Eq a => Ord a where
  ..
```

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

## Show
`Show` is a typeclass that controls how to "show" or format data. It's *minimal* definition
is `show :: a -> String`.

`Show` is basically `Display` trait from Rust.

## Read
`Read` is a typeclass that controls how to "read" or convert strings into things. It's
*minimal* definition is `read :: Read a => String -> a`.

