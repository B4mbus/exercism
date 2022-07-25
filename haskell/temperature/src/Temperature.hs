module Temperature (tempToC, tempToF) where

{- Implement the function `tempToC` to convert
`  Fahrenheit to Celsius                    -}

tempToC :: Integer -> Float
tempToC temp = ((fromInteger temp :: Float) - 32.0) / 1.8


{- Implement the function `tempToF` to convert
`  Celsius to Fahrenheit                    -}

tempToF :: Float -> Integer
tempToF temp = ceiling $ temp * 1.8 + 32.0
