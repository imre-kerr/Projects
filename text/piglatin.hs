piglatinWord :: String -> String
piglatinWord s = (moveConsonants s) ++ "ay"
	where moveConsonants (c:rest) = 
		if elem c "aeiouAEIOU" then 
			c:rest else
			(moveConsonants rest) ++ [c]

piglatin :: String -> String
piglatin = unwords . map piglatinWord . words

main = do
	input <- getLine
	putStrLn $ piglatin input
