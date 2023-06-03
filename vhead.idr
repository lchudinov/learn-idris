import Data.Vect

vhead : Vect (1 + n) elem -> elem
vhead (x :: _) = x

vhead' : (n : Nat) -> (elem : Type) -> Vect (1 + n) elem -> elem
vhead' n elem (x :: _) = x