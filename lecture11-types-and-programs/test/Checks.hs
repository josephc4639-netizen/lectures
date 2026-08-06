module Main (main) where

import Control.Monad (unless)
import qualified Examples as E

assertEqual :: (Eq a, Show a) => String -> a -> a -> IO ()
assertEqual label expected actual =
  unless (expected == actual) $
    error (label ++ ": expected " ++ show expected ++ ", got " ++ show actual)

main :: IO ()
main = do
  assertEqual "x coordinate" 0.25 (E.eval E.X (0.25, 0.75))
  assertEqual "y coordinate" 0.75 (E.eval E.Y (0.25, 0.75))
  assertEqual "literal" 2.0 (E.eval (E.Lit 2) (0.25, 0.75))
  assertEqual "sample evaluator" 5.0 (E.eval E.sample (1, 2))
  assertEqual "different add operands" 1.0 (E.eval (E.Add E.X E.Y) (0.25, 0.75))
  putStrLn "All 5 evaluator checks passed."
