import Data.List
import System.IO

prime :: Integer -> Bool
prime 2 = True
prime x = not (elem 0 [mod x y | y <- [2..ceiling(sqrt (fromIntegral x))]])

main = do
    putStrLn (show [x | x <- [2..], prime x])
