{-# OPTIONS_GHC -Wall #-}

module Examples
  ( Exp (..)
  , Point
  , eval
  , sample
  ) where

data Exp
  = X
  | Y
  | Lit Double
  | Add Exp Exp
  | Mul Exp Exp
  deriving (Eq, Show)

type Point = (Double, Double)

sample :: Exp
sample = Add X (Mul (Lit 2) Y)

-- TODO: Give one equation for every Exp constructor.
eval :: Exp -> Point -> Double
eval = error "TODO: define eval"
