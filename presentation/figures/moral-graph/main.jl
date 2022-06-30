using TikzPictures

tp = TikzPicture(
  L"""
  \matrix[row sep=0.5cm,column sep=0.5cm] {
    % First line
    \node (a) [mybag, fill=A] {$A$};  &
                                      &
                                      &
    \node (s) [mybag, fill=S] {$S$};  &
                                     \\
    % Second line
    \node (t) [mybag, fill=T] {$T$};  &
                                      &
    \node (l) [mybag, fill=L] {$L$};  &
                                      &
    \node (b) [mybag, fill=B] {$B$}; \\
    % Third line
                                      &
    \node (e) [mybag, fill=E] {$E$};  &
                                      &
                                      &
                                     \\
    % Forth line
    \node (x) [mybag, fill=X] {$X$};  &
                                      &
                                      &
    \node (d) [mybag, fill=D] {$D$};  &
                                     \\
  };

  \draw (a) edge (t);
  \draw (s) edge (l);
  \draw (s) edge (b);
  \draw (t) edge (l); % <- added edge
  \draw (t) edge (e);
  \draw (l) edge (e);
  \draw (e) edge (x);
  \draw (e) edge (d);
  \draw (b) edge (e); % <- added edge
  \draw (b) edge (d);

  \path (t) -- node[anchor=center,xshift=-0.0cm,yshift=0.3cm,rotate=-90] (be) {$\rightarrow$} (l);
  \path (b) -- node[anchor=center,xshift=0.2cm,yshift=-0.3cm,rotate=110] (be) {$\rightarrow$} (e);
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)

# Save to file
save(SVG(joinpath(@__DIR__, "output")), tp)
