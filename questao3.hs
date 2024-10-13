module Stack(
    Stack,
    newStack,
    push,
    pop,
    top,
    height,
    isEmpty
) where

type Stack a = [a]

newStack :: Stack a
newStack = []

push :: a -> Stack a -> Stack a
push x stack = x : stack

pop :: Stack a -> Stack a
pop [] = error "Empty Stack. Can't remove elements"
pop (_:xs) = xs

top :: Stack a -> a
top [] = error "Empty Stack. No top"
top (x:_) = x

height :: Stack a -> Int
height [] = 0
height (_:xs) = 1 + height xs

isEmpty :: Stack a -> Bool
isEmpty [] = True
isEmpty _ = False


main :: IO ()
main = do
  let pilha = push 9 (push 6 (push 3 newStack))
  print $ height pilha
  print $ top pilha
  let pilha2 = pop pilha
  print $ height pilha2
  print $ top pilha2
  print $ isEmpty pilha2
  let pilhaVazia = pop (pop pilha2)
  print $ isEmpty pilhaVazia
  print $ height pilhaVazia
