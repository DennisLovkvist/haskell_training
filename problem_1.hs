{-
Problem 1
(*) Find the last element of a list.

(Note that the Lisp transcription of this problem is incorrect.)

Example in Haskell:

λ> myLast [1,2,3,4]
4
λ> myLast ['x','y','z']
-}

main :: IO ()
main = do
    let list = [1,2,3,4]
    let last_element = last list
    print last_element