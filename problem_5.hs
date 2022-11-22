{-
(*) Reverse a list.

Example in Haskell:

λ> myReverse "A man, a plan, a canal, panama!"
"!amanap ,lanac a ,nalp a ,nam A"
λ> myReverse [1,2,3,4]
[4,3,2,1]
-}

{-
Add first element of list 1 to the beginning of list 2. Remove first element from list 1. Do this until list 1 is empty.
Example:
1. l1 = [1,2,3,4]   and l2 = [1] + []
2. l1 = [2,3,4]     and l2 = [2] + [1]
3. l1 = [3,4]       and l2 = [3] + [2,1]
4. l1 = [4]         and l2 = [4] + [3,2,1]
5. l1 = []          and l2 = [4,3,2,1]
-}
reverse_list :: [a] ->[a] -> [a]
reverse_list l1 l2 = 
    if null l1
        then l2
    else
        (reverse_list (tail l1) ([head l1]++l2))

main :: IO ()
main = do
    let list = [1,2,3,4]
    {-let list_reversed = reverse list; Hmmm...to easy-}
    let list_reversed = reverse_list list []
    print list_reversed 
