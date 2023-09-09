import Data.Vect

data EqNat : (n1 : Nat) -> (n2 : Nat) -> Type where
  Same : (num : Nat) -> EqNat num num

-- the (EqNat 3 3) (Same 3) 
-- the (EqNat 3 3) (Same _)

checkEqNat : (num1 : Nat) -> (num2: Nat) -> Maybe (EqNat num1 num2)
checkEqNat Z Z = Just (Same 0)
checkEqNat Z (S k) = Nothing
checkEqNat (S k) Z = Nothing
checkEqNat (S k) (S j) = case checkEqNat k j of
      Nothing => Nothing
      (Just (Same j)) => Just (Same (S j))

-- checkEqNat 2 3

exactLength' : (len : Nat) -> (input : Vect m a) -> Maybe (Vect len a)
exactLength' {m} len input = case checkEqNat m len of
    Nothing => Nothing
    (Just (Same len)) => Just input

    
-- the (3 = 3) Refl

checkEqNat' : (num1 : Nat) -> (num2: Nat) -> Maybe (num1 = num2)
checkEqNat' Z Z = Just Refl
checkEqNat' Z (S k) = Nothing
checkEqNat' (S k) Z = Nothing
checkEqNat' (S k) (S j) = case checkEqNat' k j of
                               Nothing => Nothing
                               (Just prf) => Just (cong prf)

cong' : {f : a -> b} -> (x = y) -> f x = f y
cong' Refl = Refl

-- rotateProof : Vect (len + 1) a -> Vect (S len ) a
-- rotateProof {len} xs =
--   rewrite plusCommutative 1 len in xs

rotate : Vect n a -> Vect n a
rotate [] = []
rotate (x :: xs) = rotateProof (xs ++ [x])
  where
    rotateProof : Vect (len + 1) a -> Vect (S len ) a
    rotateProof {len} xs =
      rewrite plusCommutative 1 len in xs

-- rotate (x :: xs) = belive_me (xs ++ [x])


