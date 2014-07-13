myReverse :: String -> String
myReverse = foldl (flip (:)) []

main = do
	input <- getLine
	putStrLn $ myReverse input
