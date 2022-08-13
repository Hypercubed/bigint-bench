BigInt fact(BigInt n) {
  return n==BigInt.zero ? BigInt.one : n*fact(n-BigInt.one);
}

main() {
  print(fact(BigInt.from(1000)));
}