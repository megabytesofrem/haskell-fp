module Arith4 where

roundTrip :: (Show a, Read b) => a -> b
roundTrip a = read (show a)

-- pointfree
roundTripPF :: (Show a, Read a) => a -> a
roundTripPF = read . show

main = do
  print (roundTrip 4 :: Int)
  print (roundTripPF 4)
  print (id 4)