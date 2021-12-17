## Polymorphism
- *a* is parametrically polymorphic since it is the most general it can be (can be anything)
- *Num a => a* is constrained to being part of the *Num* typeclass
- *Int* is concrete, since there is no flexibility as to the type

## Sectioning
Sectioning can be used to specify which part of a function gets applied and in what order

```hs
left :: Int -> Int
left = (^2) -- (^2) 5 = 25

right :: Int -> Int
right = (2^) -- (2^) 5 = 32
```

Certain functions like `++` can only be sectioned to the left
```hs
celebrate :: String -> String
celebrate = (++ " woot!")

-- celebrate "naptime" - naptime woot!
```

## Asserting Types
`let triple x = x * 3` by default has a polymorphic type `triple :: Num a => a -> a`. If we want to assert
that it only works with `Integer`, we can use `::`. So:

- `let triple x = x * 3 :: Integer` 

(Without `{-# LANGUAGE NoMonomorphismRestriction #-}` Haskell automatically resolves toplevel declarations
to their most concrete type.)