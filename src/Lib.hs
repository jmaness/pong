module Lib
    ( cls
    , bel
    , draw
    , move
    , erase
    ) where

cls :: IO ()
cls = do putStr "\ESC[2J"

bel :: IO ()
bel = do putStr "\BEL"

move :: Int -> Int -> IO ()
move x y = putStr ("\ESC[" ++ show y ++ ";" ++ show x ++ "H")

draw :: String -> IO ()
draw s = do putStr s

erase :: Int -> Int -> IO ()
erase x y = do move x y
               putStr " "

paint :: String -> IO ()
paint a = do
    putStr a
    hFlush stdout

