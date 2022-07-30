module SpaceAge (Planet(..), ageOn) where

data Planet =
  Mercury
    | Venus
    | Earth
    | Mars
    | Jupiter
    | Saturn
    | Uranus
    | Neptune

secondsInYear = 60.0 * 60.0 * 24.0 * 365.25 :: Float
ageOn :: Planet -> Float -> Float
ageOn Mercury = (/secondsInYear) . (/0.2408467)
ageOn Venus = (/secondsInYear) . (/0.61519726)
ageOn Earth = (/secondsInYear)
ageOn Mars = (/secondsInYear) . (/1.8808158)
ageOn Jupiter = (/secondsInYear) . (/11.862615)
ageOn Saturn = (/secondsInYear) . (/29.447498)
ageOn Uranus = (/secondsInYear) . (/84.016846)
ageOn Neptune = (/secondsInYear) . (/164.79132)
