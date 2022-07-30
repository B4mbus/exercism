module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz x
	| x <= 0 = Nothing
	| x == 1 = Just 0
	| otherwise = succ <$> collatz (if even x then x `div` 2 else 3 * x + 1)
