import Data.Vect

vhead : Vect (1 + n) elem -> elem
vhead (x :: _) = x
