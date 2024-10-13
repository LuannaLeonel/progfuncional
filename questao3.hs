module Stack(
    Stack,
    newStack,
    push,
    pop,
    top,
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


isEmpty :: Stack a -> Bool
isEmpty [] = True
isEmpty _ = False


main :: IO ()
main = do
  let pilha = push 3 (push 2 (push 1 []))
  print $ top pilha
  let pilha2 = pop pilha
  print $ top pilha2
  print $ isEmpty pilha2
  let pilhaVazia = pop (pop pilha2)
  print $ isEmpty pilhaVazia
