module Isogram where

import Data.Char

-- isIsogram :: String -> Bool
-- isIsogram [] = True
-- isIsogram (x:xs) = case (toLower x) `elem` (map toLower xs) of True  -> False
--                                                                False -> isIsogram xs



-- isIsogram :: String -> Bool
-- isIsogram [] = True
-- isIsogram (x:xs) =  let char    = toLower x
--                         strTail = map toLower xs
--                     in case char `elem` strTail of True  -> False
--                                                    False -> isIsogram xs

isIsogram :: String -> Bool
isIsogram [] = True
isIsogram (x:xs)
  | (toLower x) `elem` (map toLower xs) = False
  | otherwise =  isIsogram xs
