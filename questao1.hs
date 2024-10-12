import Data.List (foldl')

findPair :: [Int] -> Int -> (Int, Int)
findPair arr x = foldl' comparePair init pairs
  where
    pairs = [(a, b) | (a:rest) <- tails arr, b <- rest]  
    init = (head arr, head (tail arr))  

    comparePair :: (Int, Int) -> (Int, Int) -> (Int, Int)
    comparePair best curr
      | diff curr < diff best = curr 
      | otherwise = best
      where
        diff (a, b) = abs (x - (a + b)) 

tails :: [a] -> [[a]]
tails [] = []
tails xs@(_:xs') = xs : tails xs'


formatOut :: (Int, Int) -> String
formatOut (a, b) = show a ++ " and " ++ show b

            
-- testes

main :: IO ()  
main = do  
    let arr1 = [10, 22, 28, 29, 30, 40]  
    let x1 = 54  
    let par = findPair arr1 x1
    putStrLn (formatOut par)  

    let arr2 = [1, 3, 4, 7, 10]  
    let x2 = 15  
    let par = findPair arr2 x2  
    putStrLn (formatOut par)

    let arr3 = [1, 2, 3, 4, 5, 6]  
    let x3 = 11  
    let par = findPair arr3 x3
    putStrLn (formatOut par)    

    let arr4 = [5, 15, 25, 35, 45, 55]  
    let x4 = 50  
    let par = findPair arr4 x4  
    putStrLn (formatOut par)

    let arr5 = [1, 4, 6, 8, 10]  
    let x5 = 20  
    let par = findPair arr5 x5   
    putStrLn (formatOut par)

    let arr6 = [-10, -5, 0, 5, 10, 15, 20]  
    let x6 = 10  
    let par = findPair arr6 x6    
    putStrLn (formatOut par)

    let arr7 = [-10, -5, -3, -1, 0, 1, 5]  
    let x7 = -8  
    let par = findPair arr7 x7    
    putStrLn (formatOut par)

    let arr8 = [1, 2]  
    let x8 = 3  
    let par = findPair arr8 x8   
    putStrLn (formatOut par)

    let arr9 = [1, 2, 3, 4, 5]  
    let x9 = 8  
    let par = findPair arr9 x9   
    putStrLn (formatOut par)

    let arr10 = [1, 2, 6, 8, 10, 12]  
    let x10 = 14  
    let par = findPair arr10 x10   
    putStrLn (formatOut par)