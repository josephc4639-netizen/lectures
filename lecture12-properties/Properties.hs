{-# OPTIONS_GHC -Wall -Wno-unused-imports #-}

module Properties
  ( isSorted
  , prop_model
  , prop_sorted
  , qsort
  , quickCheck
  ) where

import Data.List (sort)
import Test.QuickCheck (quickCheck)

qsort :: Ord a => [a] -> [a]
qsort []     = []
qsort (x:xs) = qsort (filter (< x) xs) ++
               [x] ++
               qsort (filter (> x) xs)

isSorted :: Ord a => [a] -> Bool
isSorted []         = True
isSorted [_]        = True
isSorted (x:y:rest) = x <= y && isSorted (y:rest)

prop_sorted :: [Int] -> Bool
prop_sorted xs = isSorted (qsort xs)

-- TODO: Compare qsort's result with Data.List.sort.
prop_model :: [Int] -> Bool
prop_model = error "TODO: define prop_model"
