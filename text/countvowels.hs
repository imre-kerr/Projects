countVowels :: String -> Int
countVowels = foldl (\n c -> if c `elem` "aeiouAEIOU" then n+1 else n) 0

main = do
	input <- getLine
	putStrLn $ show $ countVowels input
