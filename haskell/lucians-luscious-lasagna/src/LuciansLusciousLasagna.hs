module LuciansLusciousLasagna (elapsedTimeInMinutes, expectedMinutesInOven, preparationTimeInMinutes) where

-- TODO: define the expectedMinutesInOven constant
expectedMinutesInOven = 40

-- TODO: define the preparationTimeInMinutes function
preparationTimeInMinutes x = x * 2

-- TODO: define the elapsedTimeInMinutes function
elapsedTimeInMinutes l t = t + preparationTimeInMinutes l
