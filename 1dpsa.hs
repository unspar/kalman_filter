
import Data.Matrix
import System.IO
import System.Environment


type State = (Double, --x pos
              Double, --x vlc
				  Double) --x acl

{-
Ok, so I have a "transition model" 
P(xt | xt-1, vt-1) = a * e ^ ( (-1/2) * (xt - ( xt-1 +  vt-1 * stp ))^2 / (s2) )
P(vt | vt-1, at-1) = a * e ^ ( (-1/2) * (vx - ( vt-1 + at-1 * stp )) ^2 / (s2) )
P(at | at-1) = a * e ^ ( (-1/2) * (at - at-1)^2 / (s2) )

And a sensor model:
where s2 is the variance (estimated nose) and a is a constant to ensure that everything adds up to 1
and stp is a constant equal the difference between t an t-1
That returns a gausian
-}







main = do 
  inp <- getArgs
  let g1 = (0, 1)
  let g2 = (1, 1)
  let m1 = (2, 0.1)
  let val = stepGaus g1 g2 m1 
  print val




