module Test.Main where

import Prelude
import Test.Unit (test)
import Test.Unit.Main (runTest)
import Test.Unit.Assert as Assert

import K.G(g)

main = runTest do
  test "GTest2" do
    Assert.assert "g" $ g == "g"