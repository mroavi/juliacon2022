using TikzPictures

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

    \draw (a) edge (t);
    \draw (s) edge (l);
    \draw (s) edge (b);
    \draw (t) edge (l);
    \draw (t) edge (e);
    \draw (l) edge (e);
    \draw (l) edge (b); % <- added edge
    \draw (e) edge (x);
    \draw (e) edge (d);
    \draw (b) edge (e);
    \draw (b) edge (d);

    \path (l) -- node[anchor=center,xshift=-0.15cm,yshift=-0.25cm,rotate=90] (bc) {$\rightarrow$} (b);

    \draw[AT, myclique] \convexpath{a,t}{15pt};
    \draw[TLE, myclique] \convexpath{t,l,e}{15pt};
    \draw[EX, myclique] \convexpath{e,x}{15pt};
    \draw[LBS, myclique] \convexpath{l,s,b}{15pt};
    \draw[LBE, myclique] \convexpath{l,b,e}{15pt};
    \draw[DEB, myclique] \convexpath{d,e,b}{15pt};
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)

# Save to file
save(SVG(joinpath(@__DIR__, "output")), tp)
