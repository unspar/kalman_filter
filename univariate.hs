

import System.IO
import System.Environment

type Gausian = (Double, Double) --(mean, stdv)


--assumes a random walk and new position
stepGaus :: Gausian -> Gausian ->  Gausian -> Gausian
stepGaus p1 p2 ms = ( ((((p1s+p2s)*msm) + (mss*p1m) )/ (p1s+p2s+mss)) , ( ( (p1s+p2s)*mss)/(p1s+p2s+mss)) )
  where
    p1m = fst p1 -- position 1 mean
    p1s = snd p1 -- position 1 stdev
    p2m = fst p2
    p2s = snd p2
    msm = fst ms
    mss = snd ms


exp10 :: Double -> Double
exp10 x = 10**x

main = do 
  inp <- getArgs
  let g1 = (0, 1)
  let g2 = (1, 1)
  let m1 = (2, 0.1)
  let val = stepGaus g1 g2 m1 
  print val




