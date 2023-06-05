import Data.Vect

v : Vect 5 Nat
v = [1,2,3,4,5]

v3 : Nat
v3 = index 3 v

-- Doesn't type check
-- v6 : Nat
-- v6 = index 6 v