using TikzPictures

tp = TikzPicture(
  L"""
    \draw [dashed, thick] (-8.0, -4.8) -- (8.0, -4.8);

    \node [above,font=\footnotesize,yshift=4.0pt] at (-7.5, -4.75) {Off-line};
    \node [below,font=\footnotesize,yshift=-4.0pt] at (-7.5, -4.85) {On-line};

    % row 1
    \node[myroundbox] (pgm) {PGM};
    \node[myroundbox,left=of pgm] (qv) {Query Variables};
    \node[myroundbox,right=of pgm] (evar) {Evidence Variables};
    % row 2
    \node[myrectbox,below=of pgm] (pptc) {JTA};
    % row 3
    \node[myroundbox,below=of pptc] (sup) {Subject Program};
    % row 4
    \node[myrectbox,below=of sup] (op) {Optimization pass};
    % row 5
    \node[myroundbox,below=of op,yshift=-8mm] (spp) {Specialized Program};
    \node[myroundbox,left=of spp] (eval) {Evidence Values};
    % row 6
    \node[myroundbox,below=of spp] (mar) {$P(\text{Query Vars} \mid \bm{E=e})$};
    % edges
    \draw[myarrow] (pgm) -- (pptc);
    \draw[myarrow] (qv) -- (pptc);
    \draw[myarrow] (evar) -- (pptc);
    \draw[myarrow] (pptc) -- (sup);
    \draw[myarrow] (sup.-45) -- (op.45);
    \draw[myarrow] (op.135) -- (sup.-135);
    \draw[myarrow] (op) -- (spp);
    \draw[myarrow] (eval) -- (spp);
    \draw[myarrow] (spp) -- (mar);

    % Background Box
    \begin{pgfonlayer}{background}
    \node[surrbox] [fit=(sup)(op)] {};
    \end{pgfonlayer}
    """,
  options="transform shape, scale=1.5",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output")), tp)
