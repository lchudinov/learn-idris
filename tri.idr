import Data.Vect

tri : Vect 3 (Double, Double)
tri = [(0.0, 0.0), (3.0, 0.0), (0.0, 4.0)]

Position : Type
Position = (Double, Double)

tri' : Vect 3 Position
tri' = [(0.0, 0.0), (3.0, 0.0), (0.0, 4.0)]

Poligon : Nat -> Type
Poligon n = Vect n Position

tri'' : Poligon 3
tri'' = [(0.0, 0.0), (3.0, 0.0), (0.0, 4.0)]

-- the' : (a : Type) -> a -> a

-- cast' : Cast from to => from -> to

summate : Int -> String -> Maybe (String, Int)
summate s y = case the Int (cast y) of
                   0 => Nothing
                   n => let s' = s + n in
                      Just ("Sum=" ++ cast s' ++ "\n", s')

