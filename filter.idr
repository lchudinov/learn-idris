import Data.Vect

filter' : (a -> Bool) -> Vect n a -> (p ** Vect p a)
filter' f [] = (0 ** [])
filter' f (x :: xs) = 
  let (_ ** xs') = filter' f xs in
    if f x then (_ ** x :: xs')
           else (_ ** xs')
