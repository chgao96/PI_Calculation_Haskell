numIters=400000 -- Or whatever upper limit. This takes a couple of seconds
ox=[1.0,3.0..numIters/2] 
cx=cycle[4.0,-4.0]

calcPi:: [Double] -> [Double] ->  Double
calcPi (c:cycList) (o:oddList) 
  | oddList==[] = 0
  | otherwise   = (c/o) + calcPi cycList oddList 

main:: IO()
main=
  print $ calcPi cx ox
