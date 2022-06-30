using TikzPictures

# The Asia network
tp = TikzPicture(
  L"""
    \matrix[row sep=0.5cm,column sep=0.5cm] {
      % First line
      \node (a) [mybag] {$A$};  &
                                &
                                &
      \node (s) [mybag] {$S$};  &
                               \\
      % Second line
      \node (t) [mybag] {$T$};  &
                                &
      \node (l) [mybag] {$L$};  &
                                &
      \node (b) [mybag] {$B$}; \\
      % Third line
                                &
      \node (e) [mybag] {$E$};  &
                                &
                                &
                               \\
      % Forth line
      \node (x) [mybag] {$X$};  &
                                &
                                &
      \node (d) [mybag] {$D$};  &
                               \\
    };

    \draw [myarrow] (a) edge (t);
    \draw [myarrow] (s) edge (l);
    \draw [myarrow] (s) edge (b);
    \draw [myarrow] (t) edge (e);
    \draw [myarrow] (l) edge (e);
    \draw [myarrow] (e) edge (x);
    \draw [myarrow] (e) edge (d);
    \draw [myarrow] (b) edge (d);
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-1")), tp)

# The Asia network with observerd and query vars
tp = TikzPicture(
  L"""
    \matrix[row sep=0.5cm,column sep=0.5cm] {

      % First line
      \node (a) [mybag] {$\underset{\sphericalangle}{A}$};  &
                                                            &
                                                            &
      \node (s) [mybag] {$S$};                              &
                                                           \\
      % Second line
      \node (t) [mybag] {$\underset{?}{T}$};                &
                                                            &
      \node (l) [mybag] {$\underset{?}{L}$};                &
                                                            &
      \node (b) [mybag] {$\underset{?}{B}$};               \\
      % Third line
                                                            &
      \node (e) [mybag] {$E$};                              &
                                                            &
                                                            &
                                                           \\
      % Forth line
      \node (x) [mybag] {$X$};                              &
                                                            &
                                                            &
      \node (d) [mybag] {$\underset{\sphericalangle}{D}$};  &
                                                           \\
    };

    \draw [myarrow] (a) edge (t);
    \draw [myarrow] (s) edge (l);
    \draw [myarrow] (s) edge (b);
    \draw [myarrow] (t) edge (e);
    \draw [myarrow] (l) edge (e);
    \draw [myarrow] (e) edge (x);
    \draw [myarrow] (e) edge (d);
    \draw [myarrow] (b) edge (d);
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-2")), tp)
