module Main where
import System.Environment

outFile :: String -> IO ()
outFile path = do
  cont <- readFile path
  putStrLn cont
  return ()

main :: IO ()
main = do
  args <- getArgs
  mapM (outFile) args
  return ()
