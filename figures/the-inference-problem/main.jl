using TikzPictures

tp = TikzPicture(
  L"""
    %\draw[help lines] (0,0) grid (10,-7);

    % mrv: the "node distances" refer to the distance between the edge of a shape
    % to the edge of the other shape. That is why I use "ie_aux" and "mar_aux"
    % below: to have equal distances between nodes with respect to the center of
    % the shapes.

    % row 1
    \node[myroundbox] (rv) {Random Variables\\$\bm{V}$};
    \node[right=of rv](aux1) {};
    \node[right=of aux1,myroundbox] (jd) {Joint Distribution\\$P(\bm{V})$};
    \node[right=of jd](aux2) {};
    \node[right=of aux2,myroundbox] (e) {Evidence\\$\bm{E=e}$};
    \node[right=of e](aux3) {};
    \node[right=of aux3,myroundbox] (qv) {Query Variables\\$\bm{Q}$};
    % row 2
    \node[below=of aux2,myrectbox] (ie) {Inference Engine};
    \node[below=of aux2] (ie_aux) {};
    % row 3
    \node[below=of ie_aux,myroundbox] (mar) {$P(\bm{Q} \mid {\bf E=e})$};
    \node[below=of ie_aux] (mar_aux) {};
    % row 0
    \node[above=of aux2,yshift=-12mm] (in) {\textbf{Input}};
    % row 4
    \node[below=of mar_aux,yshift=7mm] (out) {\textbf{Output}};

    %% edges
    \draw[myarrow] (rv) -- (ie);
    \draw[myarrow] (jd) -- (ie);
    \draw[myarrow] (e)  -- (ie);
    \draw[myarrow] (qv) -- (ie);
    \draw[myarrow] (ie) -- (mar);
  """,
  options="transform shape, scale=1.5",
  preamble="\\input{" * joinpath(@__DIR__, "preambles") * "/tikz_preamble" * "}",
)

# Save to file
save(SVG(joinpath(@__DIR__, "output")), tp)
