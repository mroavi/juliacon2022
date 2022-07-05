using TikzPictures

tp = TikzPicture(
  L"""
  % The various elements are conveniently placed using a matrix:
  \matrix[row sep=1.0cm,column sep=1.0cm] { % column sep=1.0cm causes an Overfull \hbox warning
    % First line
    \node (lbs) [mybag, asiabag, label={below:{Root}}] {${\bf 2}$\\$\{L,B,S\}$};  &
    \node (lbe) [mybag, asiabag] {${\bf 4}$\\$\{L,B,E\}$};                        &
    \node (deb) [mybag, asiabag] {${\bf 6}$\\$\{D,E,B\}$};                       \\
    % Second line
    \node (at) [mybag, asiabag] {${\bf 1}$\\$\{\underset{\sphericalangle}{A},\underset{\sphericalangle}{T}\}$};       &
    \node (tle) [mybag, asiabag] {${\bf 3}$\\$\{\underset{\sphericalangle}{T},L,E\}$};              &
    \node (ex) [mybag, asiabag] {${\bf 5}$\\$\{E,X\}$};                          \\
  };

  % The diagram elements are now connected through lines:
  \path[-]
    (lbs) edge (lbe)
    (lbe) edge (deb)
    (lbe) edge (tle)
    (at) edge (tle)
    (tle) edge (ex)
    ;

  \msgcircle{up}{right}{at}{tle}{0.5}{$1$}{MaterialBlack};
  \msgcircle{up}{left}{ex}{tle}{0.5}{$2$}{MaterialBlack};
  \msgcircle{left}{up}{tle}{lbe}{0.5}{$3$}{MaterialBlack};
  \msgcircle{up}{left}{deb}{lbe}{0.5}{$4$}{MaterialBlack};
  \msgcircle{up}{left}{lbe}{lbs}{0.5}{$5$}{MaterialBlack};

  \msgcircle{down}{right}{lbs}{lbe}{0.5}{$6$}{MaterialBlack};
  \msgcircle{right}{down}{lbe}{tle}{0.5}{$7$}{MaterialBlack};
  \msgcircle{down}{right}{lbe}{deb}{0.5}{$8$}{MaterialBlack};
  \msgcircle{down}{left}{tle}{at}{0.5}{$9$}{MaterialBlack};
  \msgcircle{down}{right}{tle}{ex}{0.5}{$10$}{MaterialBlack};
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-1")), tp)


tp = TikzPicture(
  L"""
  % The various elements are conveniently placed using a matrix:
  \matrix[row sep=1.0cm,column sep=1.0cm] { % column sep=1.0cm causes an Overfull \hbox warning
    % First line
    \node (lbs) [mybag, asiabag, label={below:{Root}}] {${\bf 2}$\\$\{L,B,S\}$};  &
    \node (lbe) [mybag, asiabag] {${\bf 4}$\\$\{L,B,E\}$};                        &
    \node (deb) [mybag, asiabag] {${\bf 6}$\\$\{D,E,B\}$};                       \\
    % Second line
    \node (at) [mybag, asiabag] {${\bf 1}$\\$\{\underset{\sphericalangle}{A},\underset{\sphericalangle}{T}\}$};       &
    \node (tle) [mybag, asiabag] {${\bf 3}$\\$\{\underset{\sphericalangle}{T},L,E\}$};              &
    \node (ex) [mybag, asiabag] {${\bf 5}$\\$\{E,X\}$};                          \\
  };

  % The diagram elements are now connected through lines:
  \path[-]
    (lbs) edge (lbe)
    (lbe) edge (deb)
    (lbe) edge (tle)
    (at) edge (tle)
    (tle) edge (ex)
    ;

  \msgcircle{up}{right}{at}{tle}{0.5}{$1$}{NPE};
  \msgcircle{up}{left}{ex}{tle}{0.5}{$2$}{PE};
  \msgcircle{left}{up}{tle}{lbe}{0.5}{$3$}{NPE};
  \msgcircle{up}{left}{deb}{lbe}{0.5}{$4$}{PE};
  \msgcircle{up}{left}{lbe}{lbs}{0.5}{$5$}{NPE};

  \msgcircle{down}{right}{lbs}{lbe}{0.5}{$6$}{PE};
  \msgcircle{right}{down}{lbe}{tle}{0.5}{$7$}{PE};
  \msgcircle{down}{right}{lbe}{deb}{0.5}{$8$}{NPE};
  \msgcircle{down}{left}{tle}{at}{0.5}{$9$}{PE};
  \msgcircle{down}{right}{tle}{ex}{0.5}{$10$}{NPE};
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-2")), tp)
