using TikzPictures

# General
tp = TikzPicture(
  L"""
  % The various elements are conveniently placed using a matrix:
  \matrix[row sep=1.00cm,column sep=1.00cm, ampersand replacement = \&] {

    % First line
    \node (lbs) [mybag] {$\{\underset{?}{L},\underset{?}{B},S\}$};  \&
    \node (lb) [vsepset] {$\{\underset{?}{L},\underset{?}{B}\}$};           \&
    \node (lbe) [mybag] {$\{\underset{?}{L},\underset{?}{B},E\}$};  \&
    \node (eb) [vsepset] {$\{E,\underset{?}{B}\}$};           \&
    \node (deb) [mybag] {$\{\underset{\sphericalangle}{D},E,\underset{?}{B}\}$}; \&
                                                              \\
    % Second line
                                                               \&
                                                               \&
    \node (le) [hsepset] {$\{\underset{?}{L},E\}$};           \&
                                                               \&
                                                              \\
    % Third line
    \node (at) [mybag] {$\{\underset{\sphericalangle}{A},\underset{?}{T}\}$};      \&
    \node (t) [vsepset] {$\{\underset{?}{T}\}$};              \&
    \node (tle) [mybag] {$\{\underset{?}{T},\underset{?}{L},E\}$};   \&
    \node (e) [vsepset] {$\{E\}$};              \&
    \node (ex) [mybag] {$\{E,X\}$};      \\
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

  \msgcircle{up}{right}{at}{t}{0.64}{$1$}{IP};
  \msgcircle{up}{left}{ex}{e}{0.64}{$2$}{IP};
  \msgcircle{left}{up}{tle}{le}{0.62}{$3$}{IP};
  \msgcircle{up}{left}{deb}{eb}{0.64}{$4$}{IP};
  \msgcircle{up}{left}{lbe}{lb}{0.64}{$5$}{IP};
  \msgcircle{down}{right}{lbs}{lb}{0.64}{$6$}{OP};
  \msgcircle{right}{down}{lbe}{le}{0.62}{$7$}{OP};
  \msgcircle{down}{right}{lbe}{eb}{0.64}{$8$}{OP};
  \msgcircle{down}{left}{tle}{t}{0.64}{$9$}{OP};
  \msgcircle{down}{right}{tle}{e}{0.64}{$10$}{OP};

  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-1")), tp)

# Marginalize B and L
tp = TikzPicture(
  L"""
  % The various elements are conveniently placed using a matrix:
  \matrix[row sep=1.00cm,column sep=1.00cm, ampersand replacement = \&] {

    % First line
    \node (lbs) [mybag,mygray] {$\{\underset{?}{L},\underset{?}{B},S\}$};  \&
    \node (lb) [vsepset] {$\{\underset{?}{L},\underset{?}{B}\}$};           \&
    \node (lbe) [mybag,mygray] {$\{\underset{?}{L},\underset{?}{B},E\}$};  \&
    \node (eb) [vsepset,mygray] {$\{E,\underset{?}{B}\}$};           \&
    \node (deb) [mybag,mygray] {$\{\underset{\sphericalangle}{D},E,\underset{?}{B}\}$}; \&
                                                              \\
    % Second line
                                                               \&
                                                               \&
    \node (le) [hsepset,mygray] {$\{\underset{?}{L},E\}$};           \&
                                                               \&
                                                              \\
    % Third line
    \node (at) [mybag,mygray] {$\{\underset{\sphericalangle}{A},\underset{?}{T}\}$};      \&
    \node (t) [vsepset,mygray] {$\{\underset{?}{T}\}$};              \&
    \node (tle) [mybag,mygray] {$\{\underset{?}{T},\underset{?}{L},E\}$};   \&
    \node (e) [vsepset,mygray] {$\{E\}$};              \&
    \node (ex) [mybag,mygray] {$\{E,X\}$};      \\
  };

  % The diagram elements are now connected through lines:
  \path[-]
    (lbs) edge (lb)
    (lb) edge (lbe)
    (lbe) edge[mygray] (eb)
    (eb) edge[mygray] (deb)
    (lbe) edge[mygray] (le)
    (le) edge[mygray] (tle)
    (at) edge[mygray] (t)
    (t) edge[mygray] (tle)
    (tle) edge[mygray] (e)
    (e) edge[mygray] (ex)
    ;

  \msgcircle{up}{right}{at}{t}{0.64}{$1$}{mygray};
  \msgcircle{up}{left}{ex}{e}{0.64}{$2$}{mygray};
  \msgcircle{left}{up}{tle}{le}{0.62}{$3$}{mygray};
  \msgcircle{up}{left}{deb}{eb}{0.64}{$4$}{mygray};
  \msgcircle{up}{left}{lbe}{lb}{0.64}{$5$}{IP};
  \msgcircle{down}{right}{lbs}{lb}{0.64}{$6$}{OP};
  \msgcircle{right}{down}{lbe}{le}{0.62}{$7$}{mygray};
  \msgcircle{down}{right}{lbe}{eb}{0.64}{$8$}{mygray};
  \msgcircle{down}{left}{tle}{t}{0.64}{$9$}{mygray};
  \msgcircle{down}{right}{tle}{e}{0.64}{$10$}{mygray};

  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-2")), tp)

# Marginalize T
tp = TikzPicture(
  L"""
  % The various elements are conveniently placed using a matrix:
  \matrix[row sep=1.00cm,column sep=1.00cm, ampersand replacement = \&] {

    % First line
    \node (lbs) [mybag,mygray] {$\{\underset{?}{L},\underset{?}{B},S\}$};  \&
    \node (lb) [vsepset,mygray] {$\{\underset{?}{L},\underset{?}{B}\}$};           \&
    \node (lbe) [mybag,mygray] {$\{\underset{?}{L},\underset{?}{B},E\}$};  \&
    \node (eb) [vsepset,mygray] {$\{E,\underset{?}{B}\}$};           \&
    \node (deb) [mybag,mygray] {$\{\underset{\sphericalangle}{D},E,\underset{?}{B}\}$}; \&
                                                              \\
    % Second line
                                                               \&
                                                               \&
    \node (le) [hsepset,mygray] {$\{\underset{?}{L},E\}$};           \&
                                                               \&
                                                              \\
    % Third line
    \node (at) [mybag,mygray] {$\{\underset{\sphericalangle}{A},\underset{?}{T}\}$};      \&
    \node (t) [vsepset] {$\{\underset{?}{T}\}$};              \&
    \node (tle) [mybag,mygray] {$\{\underset{?}{T},\underset{?}{L},E\}$};   \&
    \node (e) [vsepset,mygray] {$\{E\}$};              \&
    \node (ex) [mybag,mygray] {$\{E,X\}$};      \\
  };

  % The diagram elements are now connected through lines:
  \path[-]
    (lbs) edge[mygray] (lb)
    (lb) edge[mygray] (lbe)
    (lbe) edge[mygray] (eb)
    (eb) edge[mygray] (deb)
    (lbe) edge[mygray] (le)
    (le) edge[mygray] (tle)
    (at) edge (t)
    (t) edge (tle)
    (tle) edge[mygray] (e)
    (e) edge[mygray] (ex)
    ;

  \msgcircle{up}{right}{at}{t}{0.64}{$1$}{IP};
  \msgcircle{up}{left}{ex}{e}{0.64}{$2$}{mygray};
  \msgcircle{left}{up}{tle}{le}{0.62}{$3$}{mygray};
  \msgcircle{up}{left}{deb}{eb}{0.64}{$4$}{mygray};
  \msgcircle{up}{left}{lbe}{lb}{0.64}{$5$}{mygray};
  \msgcircle{down}{right}{lbs}{lb}{0.64}{$6$}{mygray};
  \msgcircle{right}{down}{lbe}{le}{0.62}{$7$}{mygray};
  \msgcircle{down}{right}{lbe}{eb}{0.64}{$8$}{mygray};
  \msgcircle{down}{left}{tle}{t}{0.64}{$9$}{OP};
  \msgcircle{down}{right}{tle}{e}{0.64}{$10$}{mygray};

  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-3")), tp)
