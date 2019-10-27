func interpreter(_ prog: String) -> String {
  var x = (n: 0, s: "")
  prog.map {
    if $0 == "+" { x.n = (x.n + 1) % 256}
    else if $0 == "." { x.s += [Character(UnicodeScalar(x.n)!)] }
  }
  return x.s
}
