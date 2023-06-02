import Data.Vect
 
insert : (x : Nat) -> (xs : Vect len Nat) -> Vect (S len) Nat
insert x [] = [x]
insert x (y :: xs) = case x < y of
                          False => y :: insert x xs
                          True => x :: y :: xs

insSort : Vect n Nat -> Vect n Nat
insSort [] = []
insSort (x :: xs) = 
  let xs' = insSort xs in
    insert x xs'
