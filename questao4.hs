module Queue (
    Queue,
    newQueue,
    enqueue,
    dequeue,
    first,
    queueLength,
    isEmpty
) where

type Queue a = [a]

newQueue :: Queue a 
newQueue = []

enqueue :: a -> Queue a -> Queue a
enqueue x queue = queue ++ [x]

dequeue :: Queue a -> Queue a 
dequeue [] = error "Empty Queue. Can't dequeue"
dequeue (_:xs) = xs

first :: Queue a -> a
first [] = error "Empty Queue. No first"
first (x:_) = x

queueLength :: Queue a -> Int
queueLength [] = 0
queueLength (_:xs) = 1 + queueLength xs

isEmpty :: Queue a -> Bool
isEmpty [] = True
isEmpty _ = False

main :: IO ()
main = do
    let fila = enqueue 10 (enqueue 8 (enqueue 6 newQueue))
    print $ queueLength fila
    print $ first fila
    let fila2 = dequeue fila
    print $ queueLength fila2
    print $ first fila2
    print $ isEmpty fila2
    let filaVazia = dequeue (dequeue fila2)
    print $ queueLength filaVazia
    print $ isEmpty filaVazia