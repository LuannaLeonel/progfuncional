import Text.Printf
import Data.List (groupBy, sortBy)
import Data.Function (on)

data Aluna = Aluna {
    matricula :: Int,
    nome      :: String,
    sobrenome :: String,
    ingresso  :: Int,
    cra       :: Float
} deriving (Show, Eq)

mediaCRAs :: [Aluna] -> Float
mediaCRAs alunas = 
    let soma = foldr (\aluna acc -> cra aluna + acc) 0 alunas
        qtdAlunas = fromIntegral (length alunas)
    in soma / qtdAlunas

mediaCRAsFormatada :: Float -> IO ()
mediaCRAsFormatada media = printf "Media dos CRAs: %.2f\n\n" media

groupByCRA :: [Aluna] -> [(Float, [Aluna])]
groupByCRA alunas = 
  map (\grupo -> (cra (head grupo), grupo))
  $ groupBy ((==) `on` cra)
  $ sortBy (compare `on` cra) alunas

gruposFormatados :: [(Float, [Aluna])] -> IO ()
gruposFormatados grupos = mapM_ formatarGrupo grupos
  where
    formatarGrupo (cra, alunas) = do
      putStrLn $ "CRA: " ++ show cra
      mapM_ formatarAluna alunas
    formatarAluna aluna = 
      putStrLn $ "  - " ++ nome aluna ++ " " ++ sobrenome aluna


main :: IO ()
main = do
    let alunas = [ Aluna 1 "Ada" "Lovelace" 1842 10.0
          , Aluna 2 "Grace" "Hopper" 1943 9.7
          , Aluna 3 "Margaret" "Hamilton" 1961 9.5
          , Aluna 4 "Frances" "Allen" 1957 9.2
          , Aluna 5 "Radia" "Perlman" 1959 9.7
          , Aluna 6 "Brigit" "Mendler" 2010 9.5
            ]
    mediaCRAsFormatada (mediaCRAs alunas)
    gruposFormatados (groupByCRA alunas)