## Grab Bag
- 1. Which are equivalent:
  - a) mTh x y z = x * y * z
  - b) mTh x y = \z -> x * y * z
  - c) mTh x = \y -> \z -> x * y * z
  - d) mTh = \x -> \y -> \z -> x * y * z

- Answer: they are all the same

- 2. The type of `mTh` is `Num a => a -> a -> a -> a`. What is the type of `mTh 3`?
  - a) `Integer -> Integer -> Integer`
  - b) `Num a => a -> a -> a -> a`
  - c) `Num a => a -> a`
  - d) `Num a => a -> a -> a`

- Answer: c

## Exercises
- 1. Given the following declarations:
```hs
k (x, y) = x
k1 = k ((4-1), 10)
k2 = k ("three", (1 + 2))
k3 = k (3, True)
```
  - a) What is the type of *k*?
    - A: `k :: (a, b) -> a`
  - b) What is the type of *k2*?
    - A: `k2 :: String`
  - c) Of *k1, k2, k3* which will return 3?
    - A: *k3* and *k1* will return 3

- 2. Fill in the definition of the function:
```hs
f :: (a, b, c)
  -> (d, e, f)
  -> ((a, d), (c, f))

f (a, b, c) (d, e, f) = ((a, d), (c, f))
```

