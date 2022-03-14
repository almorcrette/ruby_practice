def tribonacci(signature,n)
  return [] if n == 0
  return [signature[0]] if n == 1
  return signature[0..1] if n == 2
  return signature[0..2] if n == 3
  recursion = tribonacci(signature, n - 1)
  recursion << recursion.last(3).sum
end