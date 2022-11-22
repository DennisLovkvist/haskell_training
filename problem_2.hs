{-
(*) Find the last but one element of a list.

(Note that the Lisp transcription of this problem is incorrect.)

Example in Haskell:

λ> myButLast [1,2,3,4]
3
λ> myButLast ['a'..'z']
'y'
-}

main :: IO ()
main = do
    let list = ['a'..'z']
    let last_element = head (tail (reverse list))
    print last_element