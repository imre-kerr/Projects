palindrome :: Eq a => [a] -> Bool
palindrome [] = True
palindrome [_] = True
palindrome (x:xs) = (x == last xs) && (palindrome (init xs))

main = do
	input <- getLine
	putStrLn $ if palindrome input then "YES" else "NO"
