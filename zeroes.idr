import Data.Vect

zeroes : Vect n Nat
zeroes {n = Z} = []
zeroes {n = (S _)} = 0 :: zeroes

v : Vect 100 Nat
v = zeroes
