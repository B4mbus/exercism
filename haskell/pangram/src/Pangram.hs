module Pangram (isPangram) where

import Data.Char
import Data.List
import Control.Monad

unique :: Eq a => [a] -> [a]
unique = map head . group

isPangram :: String -> Bool
isPangram = (== ['a'..'z']) .  unique .  sort . fmap toLower . filter (liftM2 (&&) isAlpha isAscii)
