{-# LANGUAGE OverloadedStrings #-}

import Network.Wreq
--import Data.Aeson
import Test.QuickCheck

data Name = Name String deriving Show
data Email = Email String deriving Show
data Password = Password String deriving Show

data CreateUserReq = CreateUserReq { curName :: Name,
                                     curEmail :: Email,
                                     curPassword :: Password
                                   } deriving (Show)

instance Arbitrary Name where
  arbitrary = do
    s <- listOf1 $ elements ['a'..'z']
    return $ Name s




-- instance Arbitrary CreateUserRequest where
--   arbitrary = do
--     name <- arbitrary
--     email <- arbitrary
--     password <- arbitrary
--     return $ CreateUserReq name email password



main :: IO()
main = do
  r <- get "http://httpbin.org/get"
  print r
