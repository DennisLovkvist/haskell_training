{-
(*) Find the number of elements of a list.

Example in Haskell:

λ> myLength [123, 456, 789]
3
λ> myLength "Hello, world!"
13
-}

count_elements :: [x] -> Integer -> Integer
count_elements  list i = 
    if null list {-Thought list == [] would work.-}
        then i;
    else        
        (count_elements (tail list) (i+1) )

main :: IO ()
main = do
    let list = [123, 456, 789]
    let count = count_elements list 0;
    print count