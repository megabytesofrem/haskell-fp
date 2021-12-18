## Anonymous Functions
- `(\x -> x * 3)` is an anonymous lambda function. 
- In order to give it a name, we need to bind it to a name like: `triple = (\x -> x * 3)`

## Pattern Matching
```hs
isItTwo :: Integer -> Bool
isItTwo 2 = True
isItTwo _ = False 

-- ^ _ means other cases, we can capture it by naming the _ instead
```

## Guards
```hs
dogYrs :: Integer -> Integer
dogYrs x
  | x <= 0    = 0
  | x <= 1    = x * 15
  | x <= 2    = x * 12
  | x <= 4    = x * 8
  | otherwise = x * 6
```