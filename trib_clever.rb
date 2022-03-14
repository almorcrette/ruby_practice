def tribonacci(signature,n)
  n.times.map{signature << signature.inject(:+); signature.shift}
end