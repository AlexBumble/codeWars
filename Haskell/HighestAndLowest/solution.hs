module Kata (highAndLow) where

highAndLow :: String -> String
highAndLow input =
  let arr :: [Int]
      arr = map read $ words input
  in show (maximum arr) ++ " " ++ show (minimum arr)
