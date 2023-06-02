import Data.Vect
 
insert : Ord elem => (x : elem) -> (xs : Vect len elem) -> Vect (S len) elem
insert x [] = [x]
insert x ys@(y :: xs) = case x < y of
                          False => y :: insert x xs
                          True => x :: ys

insSort : Ord elem => Vect n elem -> Vect n elem
insSort [] = []
insSort (x :: xs) = 
  let xs' = insSort xs in
    insert x xs'
