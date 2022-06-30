using TikzPictures

tp = TikzPicture(
  L"""
    \matrix[row sep=0.26cm,column sep=0.20cm] {
      % First line
      \node (lbs) [mybag, draw=LBS] {$\{L,B,S\}$};  &
      \node (lb) [myvsepset] {$\{L,B\}$};           &
      \node (lbe) [mybag, draw=LBE] {$\{L,B,E\}$};  &
      \node (eb) [myvsepset] {$\{E,B\}$};           &
      \node (deb) [mybag, draw=DEB] {$\{D,E,B\}$}; \\
      % Second line
                                                    &
                                                    &
      \node (le) [myhsepset] {$\{L,E\}$};           &
                                                    &
                                                   \\
      % Third line
      \node (at) [mybag, draw=AT] {$\{A,T\}$};      &
      \node (t) [myvsepset] {$\{T\}$};              &
      \node (tle) [mybag, draw=TLE] {$\{T,L,E\}$};  &
      \node (e) [myvsepset] {$\{E\}$};              &
      \node (ex) [mybag,draw=EX] {$\{E,X\}$};      \\
    };

    % The diagram elements are now connected through lines:
    \path[-]
      (lbs) edge (lb)
      (lb) edge (lbe)
      (lbe) edge (eb)
      (eb) edge (deb)
      (lbe) edge (le)
      (le) edge (tle)
      (at) edge (t)
      (t) edge (tle)
      (tle) edge (e)
      (e) edge (ex)
      ;
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-1")), tp)

# Encircled variables indicate which conditional probability distributions were
# multiplied into which cluster potentials 
tp = TikzPicture(
  L"""
    \matrix[row sep=0.26cm,column sep=0.20cm] {
      % First line
      \node (lbs) [mybag, draw=LBS] {$\{\Circled[fill color=L]{L},\Circled[fill color=B]{B},\Circled[fill color=S]{S}\}$};  &
      \node (lb) [myvsepset] {$\{L,B\}$};                            &
      \node (lbe) [mybag, draw=LBE] {$\{L,B,E\}$};  &
      \node (eb) [myvsepset] {$\{E,B\}$};                          &
      \node (deb) [mybag, draw=DEB] {$\{\Circled[fill color=D]{D},E,B\}$}; \\
      % Second line
                                                          &
                                                          &
      \node (le) [myhsepset] {$\{L,E\}$};                    &
                                                          &
                                                          \\
      % Third line
      \node (at) [mybag, draw=AT] {$\{\Circled[fill color=A]{A},\Circled[fill color=T]{T}\}$};  &
      \node (t) [myvsepset] {$\{T\}$};                    &
      \node (tle) [mybag, draw=TLE] {$\{T,L,\Circled[fill color=E]{E}\}$};  &
      \node (e) [myvsepset] {$\{E\}$};                    &
      \node (ex) [mybag,draw=EX] {$\{E,\Circled[fill color=X]{X}\}$}; \\
    };

    % The diagram elements are now connected through lines:
    \path[-]
      (lbs) edge (lb)
      (lb) edge (lbe)
      (lbe) edge (eb)
      (eb) edge (deb)
      (lbe) edge (le)
      (le) edge (tle)
      (at) edge (t)
      (t) edge (tle)
      (tle) edge (e)
      (e) edge (ex)
      ;
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-2")), tp)
