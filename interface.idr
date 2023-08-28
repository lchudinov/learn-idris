data NPair : Type where
  MkNPair : Nat -> Nat -> NPair
  
Show NPair where
  show (MkNPair n m) = "(" ++ show n ++ "," ++ show m ++ ")"
  
-- show (MkNPair 4 5)

-- sort: Ord a => List a -> List a

-- sortAndShow : (Ord a, Show a) => List a -> String
-- sortAndShow xs = show (sort xs)

-- named realization for show interface
[myShowNat] Show Nat where
  show Z = "z"
  show (S k) = strCons 's' (show k)
  
-- show @{myShowNat} (S (S (S Z)))
-- "sssz" : String

