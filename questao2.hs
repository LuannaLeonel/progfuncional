import Data.List (sort)  

findFloorAndCeil :: [Int] -> Int -> (Maybe Int, Maybe Int)  
findFloorAndCeil arr x = (findFloor sortedArr, findCeil sortedArr)  
  where  
    sortedArr = sort arr    
    findFloor lst = if null candidatesFloor   
                    then Nothing   
                    else Just (maximum candidatesFloor)  
      where  
        candidatesFloor = filter (< x) lst  

    findCeil lst = if null candidatesCeil   
                   then Nothing   
                   else Just (minimum candidatesCeil)  
      where  
        candidatesCeil = filter (> x) lst  

main :: IO ()  
main = do  
    let arr = [10, 22, 28, 29, 30, 40]  
    let x = 25  
    print $ findFloorAndCeil arr x  

    let arr2 = [1, 3, 4, 7, 10]  
    let x2 = 5  
    print $ findFloorAndCeil arr2 x2    

    let arr3 = []  
    let x3 = 10  
    print $ findFloorAndCeil arr3 x3   

    let arr4 = [1, 5, 10, 20, 30]  
    let x4 = 17  
    print $ findFloorAndCeil arr4 x4    