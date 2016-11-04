module Test.Hspec.Core.Formatters.Pretty (pretty) where

import           Text.Show.Pretty

pretty :: String -> String
pretty text = case parseValue text of
  Just v  -> show $ valToDoc v
  Nothing -> text
