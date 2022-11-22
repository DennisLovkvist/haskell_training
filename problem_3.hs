{-
(*) Find the K'th element of a list. The first element in the list is number 1.

Example:

* (element-at '(a b c d e) 3)
c
Example in Haskell:

λ> elementAt [1,2,3] 2
2
λ> elementAt "haskell" 5
'e'
-}
get_element_at_index :: [x] -> Int -> x
get_element_at_index list i = list !! (i-1){-This works for some reason. Is !! an operator?-}

main :: IO ()
main = do
    let k = 5;
    let list = "haskell"
    let element =  get_element_at_index list k;
    print element