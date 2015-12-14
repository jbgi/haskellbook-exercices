module Chap3 where

-- 2.

addBang s = s ++ "!"

take1Drop4 = take 1 . drop 4

drop9 = drop 9

thirdLetter :: String -> Char
thirdLetter x = x !! 2

letterIndex :: Int -> Char
letterIndex = (!!) "Curry is awesome!"

rvrs :: String -> String
rvrs s = drop 9 s ++ take 4 (drop 5 s) ++ take 5 s

runChap3 :: IO ()
runChap3 = do
  print "=== Chap3 Exercices ==="
  let curry = "Curry is awesome"
  let curryBang = addBang curry
  putStrLn curryBang
  putStrLn $ take1Drop4 curryBang
  putStrLn $ drop9 curryBang
  print $ rvrs curry
