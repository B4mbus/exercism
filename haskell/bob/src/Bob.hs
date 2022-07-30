module Bob (responseFor) where

import Data.Char
import Control.Monad

booga = liftM2 (&&) isAscii isAlpha
fooga = liftM2 (||) isUpper isSpace

trim :: String -> String
trim = reverse . dropWhile isSpace . reverse . dropWhile isSpace

responseFor :: String -> String
responseFor xs
  | null xs || all isSpace xs = "Fine. Be that way!"
  | dropWhile fooga xs == "?" = "Calm down, I know what I'm doing!"
  | last (trim xs) == '?' = "Sure."
  | liftM2 (&&) (not . null) (all isUpper) $ filter booga xs = "Whoa, chill out!"
  | otherwise = "Whatever."
