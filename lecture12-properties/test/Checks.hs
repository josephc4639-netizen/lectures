module Main (main) where

import Test.Hspec

import Properties

main :: IO ()
main = hspec $ do
  describe "sorting properties" $ do
    it "shows why sortedness alone is too weak" $
      prop_sorted [0, 0] `shouldBe` True
    it "uses the model property to expose the duplicate bug" $
      prop_model [0, 0] `shouldBe` False
