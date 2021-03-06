-- (*) Find the K'th element of a list. The first element in the list is number 1.

-- Example:

-- * (element-at '(a b c d e) 3)
-- c
-- Example in Haskell:

-- Prelude> elementAt [1,2,3] 2
-- 2
-- Prelude> elementAt "haskell" 5
-- 'e'

elementAt:: [a] -> Int -> a
elementAt [] _ = error "Out of range"
elementAt (x:_) 1 = x
elementAt (_:xs) n = elementAt xs (n - 1)

main::IO()
main = do
  putStrLn $ show $ elementAt [1,2,3,4,5] 5
