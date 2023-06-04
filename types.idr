data MyBool : Type where
  MyFalse : MyBool
  MyTrue : MyBool

data NPair : Type where
  MkNPair : Nat -> Nat -> NPair
  
b : MyBool
b = MyTrue

p : NPair
p = MkNPair 2 3

data MyBool' = MyTrue' | MyFalse'
data NPair' = MkNPair' Nat Nat

data MyOrdering = LT | EQ | GT

compare : Ord a => a -> a -> MyOrdering

data Suit = Spades | Clubs | Diamonds | Hearts

isRed : Suit -> Bool
isRed Diamonds = True
isRed Hearts = True
isRed _ = False

data MyPair : Type -> Type -> Type where
  MkPair : a -> b -> MyPair a b

data MyPair' a b = MkPair' a b

p1 : MyPair Nat Char
p1 = MkPair 3 'x'

p2: (Nat, Char)
p2 = (3, 'x')

data MyNat : Type where
  MyZ : MyNat
  MyS : MyNat -> MyNat

data MyNat' = MyZ' | MyS' MyNat'

data Maybe' a = Nothing' | Just' a

data Either' a b = Left' a | Right' b

data List' a = Nil' | (::) a (List' a)


