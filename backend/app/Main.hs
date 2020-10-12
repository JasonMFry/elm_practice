{-# LANGUAGE OverloadedStrings #-}
module Main where

import qualified Data.ByteString.Lazy as BS
import Data.Csv
import qualified Data.Vector as V

main :: IO ()
main = parseCsv

parseCsv :: IO ()
parseCsv = do
  csvData <- BS.readFile "salaries.csv"
  case decodeByName csvData of
    Left err -> putStrLn err
    Right (_, v) -> V.forM_ v $ \p ->
      putStrLn $ name p ++ " earns " ++ show (salary p) ++ " dollars."

data Person = Person
  { name :: !String
  , salary :: !Int
  }

instance FromNamedRecord Person where
  parseNamedRecord r = Person <$> r .: "name" <*> r .: "salary"
