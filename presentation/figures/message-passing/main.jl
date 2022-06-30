using TikzPictures

# Without messages
tp = TikzPicture(
  L"""
    \matrix[row sep=1.0cm,column sep=1.0cm] {
      % First line
      \node (lbs) [mybag, label={below:{Root}}] {$\{L,B,S\}$};  &
      \node (lbe) [mybag] {$\{L,B,E\}$};                        &
      \node (deb) [mybag] {$\{D,E,B\}$};                       \\
      % Second line
      \node (at) [mybag] {$\{A,T\}$};                           &
      \node (tle) [mybag] {$\{T,L,E\}$};                        &
      \node (ex) [mybag] {$\{E,X\}$};                          \\
    };
      
    % The diagram elements are now connected through lines:
    \path[-]
      (lbs) edge (lbe)
      (lbe) edge (deb)
      (lbe) edge (tle)
      (at) edge (tle)
      (tle) edge (ex)
      ;
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-00")), tp)

# Message 01
tp = TikzPicture(
  L"""
    \matrix[row sep=1.0cm,column sep=1.0cm] {
      % First line
      \node (lbs) [mybag, label={below:{Root}}] {$\{L,B,S\}$};  &
      \node (lbe) [mybag] {$\{L,B,E\}$};                        &
      \node (deb) [mybag] {$\{D,E,B\}$};                       \\
      % Second line
      \node (at) [mybag] {$\{A,T\}$};                           &
      \node (tle) [mybag] {$\{T,L,E\}$};                        &
      \node (ex) [mybag] {$\{E,X\}$};                          \\
    };
      
    % The diagram elements are now connected through lines:
    \path[-]
      (lbs) edge (lbe)
      (lbe) edge (deb)
      (lbe) edge (tle)
      (at) edge (tle)
      (tle) edge (ex)
      ;

    \msgcircle{up}{right}{at}{tle}{0.5}{$1$}{IP};
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-01")), tp)

# Messge 02
tp = TikzPicture(
  L"""
    \matrix[row sep=1.0cm,column sep=1.0cm] {
      % First line
      \node (lbs) [mybag, label={below:{Root}}] {$\{L,B,S\}$};  &
      \node (lbe) [mybag] {$\{L,B,E\}$};                        &
      \node (deb) [mybag] {$\{D,E,B\}$};                       \\
      % Second line
      \node (at) [mybag] {$\{A,T\}$};                           &
      \node (tle) [mybag] {$\{T,L,E\}$};                        &
      \node (ex) [mybag] {$\{E,X\}$};                          \\
    };
      
    % The diagram elements are now connected through lines:
    \path[-]
      (lbs) edge (lbe)
      (lbe) edge (deb)
      (lbe) edge (tle)
      (at) edge (tle)
      (tle) edge (ex)
      ;

    \msgcircle{up}{right}{at}{tle}{0.5}{$1$}{IP};
    \msgcircle{up}{left}{ex}{tle}{0.5}{$2$}{IP};
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-02")), tp)

# Messge 03
tp = TikzPicture(
  L"""
    \matrix[row sep=1.0cm,column sep=1.0cm] {
      % First line
      \node (lbs) [mybag, label={below:{Root}}] {$\{L,B,S\}$};  &
      \node (lbe) [mybag] {$\{L,B,E\}$};                        &
      \node (deb) [mybag] {$\{D,E,B\}$};                       \\
      % Second line
      \node (at) [mybag] {$\{A,T\}$};                           &
      \node (tle) [mybag] {$\{T,L,E\}$};                        &
      \node (ex) [mybag] {$\{E,X\}$};                          \\
    };
      
    % The diagram elements are now connected through lines:
    \path[-]
      (lbs) edge (lbe)
      (lbe) edge (deb)
      (lbe) edge (tle)
      (at) edge (tle)
      (tle) edge (ex)
      ;

    \msgcircle{up}{right}{at}{tle}{0.5}{$1$}{IP};
    \msgcircle{up}{left}{ex}{tle}{0.5}{$2$}{IP};
    \msgcircle{left}{up}{tle}{lbe}{0.5}{$3$}{IP};
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-03")), tp)

# Messge 04
tp = TikzPicture(
  L"""
    \matrix[row sep=1.0cm,column sep=1.0cm] {
      % First line
      \node (lbs) [mybag, label={below:{Root}}] {$\{L,B,S\}$};  &
      \node (lbe) [mybag] {$\{L,B,E\}$};                        &
      \node (deb) [mybag] {$\{D,E,B\}$};                       \\
      % Second line
      \node (at) [mybag] {$\{A,T\}$};                           &
      \node (tle) [mybag] {$\{T,L,E\}$};                        &
      \node (ex) [mybag] {$\{E,X\}$};                          \\
    };
      
    % The diagram elements are now connected through lines:
    \path[-]
      (lbs) edge (lbe)
      (lbe) edge (deb)
      (lbe) edge (tle)
      (at) edge (tle)
      (tle) edge (ex)
      ;

    \msgcircle{up}{right}{at}{tle}{0.5}{$1$}{IP};
    \msgcircle{up}{left}{ex}{tle}{0.5}{$2$}{IP};
    \msgcircle{left}{up}{tle}{lbe}{0.5}{$3$}{IP};
    \msgcircle{up}{left}{deb}{lbe}{0.5}{$4$}{IP};
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-04")), tp)

# Messge 05
tp = TikzPicture(
  L"""
    \matrix[row sep=1.0cm,column sep=1.0cm] {
      % First line
      \node (lbs) [mybag, label={below:{Root}}] {$\{L,B,S\}$};  &
      \node (lbe) [mybag] {$\{L,B,E\}$};                        &
      \node (deb) [mybag] {$\{D,E,B\}$};                       \\
      % Second line
      \node (at) [mybag] {$\{A,T\}$};                           &
      \node (tle) [mybag] {$\{T,L,E\}$};                        &
      \node (ex) [mybag] {$\{E,X\}$};                          \\
    };
      
    % The diagram elements are now connected through lines:
    \path[-]
      (lbs) edge (lbe)
      (lbe) edge (deb)
      (lbe) edge (tle)
      (at) edge (tle)
      (tle) edge (ex)
      ;

    \msgcircle{up}{right}{at}{tle}{0.5}{$1$}{IP};
    \msgcircle{up}{left}{ex}{tle}{0.5}{$2$}{IP};
    \msgcircle{left}{up}{tle}{lbe}{0.5}{$3$}{IP};
    \msgcircle{up}{left}{deb}{lbe}{0.5}{$4$}{IP};
    \msgcircle{up}{left}{lbe}{lbs}{0.5}{$5$}{IP};
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-05")), tp)

# Messge 06
tp = TikzPicture(
  L"""
    \matrix[row sep=1.0cm,column sep=1.0cm] {
      % First line
      \node (lbs) [mybag, label={below:{Root}}] {$\{L,B,S\}$};  &
      \node (lbe) [mybag] {$\{L,B,E\}$};                        &
      \node (deb) [mybag] {$\{D,E,B\}$};                       \\
      % Second line
      \node (at) [mybag] {$\{A,T\}$};                           &
      \node (tle) [mybag] {$\{T,L,E\}$};                        &
      \node (ex) [mybag] {$\{E,X\}$};                          \\
    };
      
    % The diagram elements are now connected through lines:
    \path[-]
      (lbs) edge (lbe)
      (lbe) edge (deb)
      (lbe) edge (tle)
      (at) edge (tle)
      (tle) edge (ex)
      ;

    \msgcircle{up}{right}{at}{tle}{0.5}{$1$}{IP};
    \msgcircle{up}{left}{ex}{tle}{0.5}{$2$}{IP};
    \msgcircle{left}{up}{tle}{lbe}{0.5}{$3$}{IP};
    \msgcircle{up}{left}{deb}{lbe}{0.5}{$4$}{IP};
    \msgcircle{up}{left}{lbe}{lbs}{0.5}{$5$}{IP};
    \msgcircle{down}{right}{lbs}{lbe}{0.5}{$6$}{OP};
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-06")), tp)

# Messge 07
tp = TikzPicture(
  L"""
    \matrix[row sep=1.0cm,column sep=1.0cm] {
      % First line
      \node (lbs) [mybag, label={below:{Root}}] {$\{L,B,S\}$};  &
      \node (lbe) [mybag] {$\{L,B,E\}$};                        &
      \node (deb) [mybag] {$\{D,E,B\}$};                       \\
      % Second line
      \node (at) [mybag] {$\{A,T\}$};                           &
      \node (tle) [mybag] {$\{T,L,E\}$};                        &
      \node (ex) [mybag] {$\{E,X\}$};                          \\
    };
      
    % The diagram elements are now connected through lines:
    \path[-]
      (lbs) edge (lbe)
      (lbe) edge (deb)
      (lbe) edge (tle)
      (at) edge (tle)
      (tle) edge (ex)
      ;

    \msgcircle{up}{right}{at}{tle}{0.5}{$1$}{IP};
    \msgcircle{up}{left}{ex}{tle}{0.5}{$2$}{IP};
    \msgcircle{left}{up}{tle}{lbe}{0.5}{$3$}{IP};
    \msgcircle{up}{left}{deb}{lbe}{0.5}{$4$}{IP};
    \msgcircle{up}{left}{lbe}{lbs}{0.5}{$5$}{IP};
    \msgcircle{down}{right}{lbs}{lbe}{0.5}{$6$}{OP};
    \msgcircle{right}{down}{lbe}{tle}{0.5}{$7$}{OP};
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-07")), tp)

# Messge 08
tp = TikzPicture(
  L"""
    \matrix[row sep=1.0cm,column sep=1.0cm] {
      % First line
      \node (lbs) [mybag, label={below:{Root}}] {$\{L,B,S\}$};  &
      \node (lbe) [mybag] {$\{L,B,E\}$};                        &
      \node (deb) [mybag] {$\{D,E,B\}$};                       \\
      % Second line
      \node (at) [mybag] {$\{A,T\}$};                           &
      \node (tle) [mybag] {$\{T,L,E\}$};                        &
      \node (ex) [mybag] {$\{E,X\}$};                          \\
    };
      
    % The diagram elements are now connected through lines:
    \path[-]
      (lbs) edge (lbe)
      (lbe) edge (deb)
      (lbe) edge (tle)
      (at) edge (tle)
      (tle) edge (ex)
      ;

    \msgcircle{up}{right}{at}{tle}{0.5}{$1$}{IP};
    \msgcircle{up}{left}{ex}{tle}{0.5}{$2$}{IP};
    \msgcircle{left}{up}{tle}{lbe}{0.5}{$3$}{IP};
    \msgcircle{up}{left}{deb}{lbe}{0.5}{$4$}{IP};
    \msgcircle{up}{left}{lbe}{lbs}{0.5}{$5$}{IP};
    \msgcircle{down}{right}{lbs}{lbe}{0.5}{$6$}{OP};
    \msgcircle{right}{down}{lbe}{tle}{0.5}{$7$}{OP};
    \msgcircle{down}{right}{lbe}{deb}{0.5}{$8$}{OP};
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-08")), tp)

# Messge 09
tp = TikzPicture(
  L"""
    \matrix[row sep=1.0cm,column sep=1.0cm] {
      % First line
      \node (lbs) [mybag, label={below:{Root}}] {$\{L,B,S\}$};  &
      \node (lbe) [mybag] {$\{L,B,E\}$};                        &
      \node (deb) [mybag] {$\{D,E,B\}$};                       \\
      % Second line
      \node (at) [mybag] {$\{A,T\}$};                           &
      \node (tle) [mybag] {$\{T,L,E\}$};                        &
      \node (ex) [mybag] {$\{E,X\}$};                          \\
    };
      
    % The diagram elements are now connected through lines:
    \path[-]
      (lbs) edge (lbe)
      (lbe) edge (deb)
      (lbe) edge (tle)
      (at) edge (tle)
      (tle) edge (ex)
      ;

    \msgcircle{up}{right}{at}{tle}{0.5}{$1$}{IP};
    \msgcircle{up}{left}{ex}{tle}{0.5}{$2$}{IP};
    \msgcircle{left}{up}{tle}{lbe}{0.5}{$3$}{IP};
    \msgcircle{up}{left}{deb}{lbe}{0.5}{$4$}{IP};
    \msgcircle{up}{left}{lbe}{lbs}{0.5}{$5$}{IP};
    \msgcircle{down}{right}{lbs}{lbe}{0.5}{$6$}{OP};
    \msgcircle{right}{down}{lbe}{tle}{0.5}{$7$}{OP};
    \msgcircle{down}{right}{lbe}{deb}{0.5}{$8$}{OP};
    \msgcircle{down}{left}{tle}{at}{0.5}{$9$}{OP};
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-09")), tp)

# Messge 10
tp = TikzPicture(
  L"""
    \matrix[row sep=1.0cm,column sep=1.0cm] {
      % First line
      \node (lbs) [mybag, label={below:{Root}}] {$\{L,B,S\}$};  &
      \node (lbe) [mybag] {$\{L,B,E\}$};                        &
      \node (deb) [mybag] {$\{D,E,B\}$};                       \\
      % Second line
      \node (at) [mybag] {$\{A,T\}$};                           &
      \node (tle) [mybag] {$\{T,L,E\}$};                        &
      \node (ex) [mybag] {$\{E,X\}$};                          \\
    };
      
    % The diagram elements are now connected through lines:
    \path[-]
      (lbs) edge (lbe)
      (lbe) edge (deb)
      (lbe) edge (tle)
      (at) edge (tle)
      (tle) edge (ex)
      ;

    \msgcircle{up}{right}{at}{tle}{0.5}{$1$}{IP};
    \msgcircle{up}{left}{ex}{tle}{0.5}{$2$}{IP};
    \msgcircle{left}{up}{tle}{lbe}{0.5}{$3$}{IP};
    \msgcircle{up}{left}{deb}{lbe}{0.5}{$4$}{IP};
    \msgcircle{up}{left}{lbe}{lbs}{0.5}{$5$}{IP};
    \msgcircle{down}{right}{lbs}{lbe}{0.5}{$6$}{OP};
    \msgcircle{right}{down}{lbe}{tle}{0.5}{$7$}{OP};
    \msgcircle{down}{right}{lbe}{deb}{0.5}{$8$}{OP};
    \msgcircle{down}{left}{tle}{at}{0.5}{$9$}{OP};
    \msgcircle{down}{right}{tle}{ex}{0.5}{$10$}{OP};
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-10")), tp)

# Messge 10
tp = TikzPicture(
  L"""
    \matrix[row sep=1.0cm,column sep=1.0cm] {
      % First line
      \node (lbs) [mybag, label={below:{Root}}] {$\{L,B,S\}$};  &
      \node (lbe) [mybag] {$\{L,B,E\}$};                        &
      \node (deb) [mybag] {$\{D,E,B\}$};                       \\
      % Second line
      \node (at) [mybag] {$\{A,T\}$};                           &
      \node (tle) [mybag] {$\{T,L,E\}$};                        &
      \node (ex) [mybag] {$\{E,X\}$};                          \\
    };
      
    % The diagram elements are now connected through lines:
    \path[-]
      (lbs) edge (lbe)
      (lbe) edge (deb)
      (lbe) edge (tle)
      (at) edge (tle)
      (tle) edge (ex)
      ;

    \msgcircle{up}{right}{at}{tle}{0.5}{$1$}{IP};
    \msgcircle{up}{left}{ex}{tle}{0.5}{$2$}{IP};
    \msgcircle{left}{up}{tle}{lbe}{0.5}{$3$}{IP};
    \msgcircle{up}{left}{deb}{lbe}{0.5}{$4$}{IP};
    \msgcircle{up}{left}{lbe}{lbs}{0.5}{$5$}{IP};
    \msgcircle{down}{right}{lbs}{lbe}{0.5}{$6$}{OP};
    \msgcircle{right}{down}{lbe}{tle}{0.5}{$7$}{OP};
    \msgcircle{down}{right}{lbe}{deb}{0.5}{$8$}{OP};
    \msgcircle{down}{left}{tle}{at}{0.5}{$9$}{OP};
    \msgcircle{down}{right}{tle}{ex}{0.5}{$10$}{OP};
  """,
  options="transform shape",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-10")), tp)
