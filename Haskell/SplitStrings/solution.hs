module Codewars.Kata.SplitStrings where

solution :: String -> [String]
solution [] = []
solution xs
  | length xs == 1 = [xs ++ "_"]
  | otherwise      = [take 2 xs] ++ solution (drop 2 xs)
