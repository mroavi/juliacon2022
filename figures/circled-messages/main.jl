using TikzPictures

# Mesage 1
tp = TikzPicture(
  L"""
  \node (at) {};
  \node (t) {};
  \msgcircle{up}{right}{at}{t}{0.65}{$1$}{IP};
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "1")), tp)

# Mesage 9
tp = TikzPicture(
  L"""
  \node (t) {};
  \node (tle) {};
  \msgcircle{down}{left}{tle}{t}{0.64}{$9$}{OP};
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "9")), tp)

# Mesage 6
tp = TikzPicture(
  L"""
  \node (lbs) {};
  \node (lb) {};
  \msgcircle{down}{right}{lbs}{lb}{0.64}{$6$}{OP};
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "6")), tp)

# Mesage 5
tp = TikzPicture(
  L"""
  \node (lbe) {};
  \node (lb) {};
  \msgcircle{up}{left}{lbe}{lb}{0.64}{$5$}{IP};
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "5")), tp)
