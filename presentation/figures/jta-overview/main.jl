using TikzPictures

#------------------------------------------------------------------------------


# Overview
tp = TikzPicture(
  L"""
    \node[mybox] (pgm) {Probabilistic Graphical Model};
    \node[mybox,below=of pgm] (jts) {Junction Tree};
    \node[mybox,below=of jts] (ijt) {Inconsistent Junction Tree};
    \node[mybox,below=of ijt] (cjt) {Consistent Junction Tree};
    \node[below=of cjt] (mar) {$P(\bm{Q} \mid \bm{E=e})$};

    \draw[myarrow] (pgm) -- (jts);
    \draw[myarrow,-] (jts) -- (ijt);
    \draw[myarrow] (ijt) -- (cjt);
    \draw[myarrow] (cjt) -- (mar);

    \path (pgm) -- node[mylabel] (gt) {Graphical\\Transformation} (jts);
    \path (jts) -- node[mylabel] (ini) {1. Initialization\\2. Observation entry} (ijt);
    \path (ijt) -- node[mylabel] (pro) {Propagation} (cjt);
    \path (cjt) -- node[mylabel] (mar-nor) {1. Marginalization\\2. Normalization} (mar);
  """,
  options="transform shape, scale=1.5",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-1-0")), tp)

# Overview - Graphical transformation
tp = TikzPicture(
  L"""
    \node[mybox] (pgm) {Probabilistic Graphical Model};
    \node[mybox,below=of pgm] (jts) {Junction Tree};
    \node[mybox,below=of jts] (ijt) {Inconsistent Junction Tree};
    \node[mybox,below=of ijt] (cjt) {Consistent Junction Tree};
    \node[below=of cjt] (mar) {$P(\bm{Q} \mid \bm{E=e})$};

    \draw[myarrow] (pgm) -- (jts);
    \draw[myarrow,-] (jts) -- (ijt);
    \draw[myarrow] (ijt) -- (cjt);
    \draw[myarrow] (cjt) -- (mar);

    \path (pgm) -- node[mylabel] (gt) {\textbf{Graphical\\Transformation}} (jts);
    \path (jts) -- node[mylabel] (ini) {1. Initialization\\2. Observation entry} (ijt);
    \path (ijt) -- node[mylabel] (pro) {Propagation} (cjt);
    \path (cjt) -- node[mylabel] (mar-nor) {1. Marginalization\\2. Normalization} (mar);
  """,
  options="transform shape, scale=1.5",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-1-1")), tp)

# Overview - Initialization
tp = TikzPicture(
  L"""
    \node[mybox] (pgm) {Probabilistic Graphical Model};
    \node[mybox,below=of pgm] (jts) {Junction Tree};
    \node[mybox,below=of jts] (ijt) {Inconsistent Junction Tree};
    \node[mybox,below=of ijt] (cjt) {Consistent Junction Tree};
    \node[below=of cjt] (mar) {$P(\bm{Q} \mid \bm{E=e})$};

    \draw[myarrow] (pgm) -- (jts);
    \draw[myarrow,-] (jts) -- (ijt);
    \draw[myarrow] (ijt) -- (cjt);
    \draw[myarrow] (cjt) -- (mar);

    \path (pgm) -- node[mylabel] (gt) {Graphical\\Transformation} (jts);
    \path (jts) -- node[mylabel] (ini) {\textbf{1. Initialization}\\2. Observation entry} (ijt);
    \path (ijt) -- node[mylabel] (pro) {Propagation} (cjt);
    \path (cjt) -- node[mylabel] (mar-nor) {1. Marginalization\\2. Normalization} (mar);
  """,
  options="transform shape, scale=1.5",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-1-2")), tp)

# Overview - Observation entry
tp = TikzPicture(
  L"""
    \node[mybox] (pgm) {Probabilistic Graphical Model};
    \node[mybox,below=of pgm] (jts) {Junction Tree};
    \node[mybox,below=of jts] (ijt) {Inconsistent Junction Tree};
    \node[mybox,below=of ijt] (cjt) {Consistent Junction Tree};
    \node[below=of cjt] (mar) {$P(\bm{Q} \mid \bm{E=e})$};

    \draw[myarrow] (pgm) -- (jts);
    \draw[myarrow,-] (jts) -- (ijt);
    \draw[myarrow] (ijt) -- (cjt);
    \draw[myarrow] (cjt) -- (mar);

    \path (pgm) -- node[mylabel] (gt) {Graphical\\Transformation} (jts);
    \path (jts) -- node[mylabel] (ini) {1. Initialization\\\textbf{2. Observation entry}} (ijt);
    \path (ijt) -- node[mylabel] (pro) {Propagation} (cjt);
    \path (cjt) -- node[mylabel] (mar-nor) {1. Marginalization\\2. Normalization} (mar);
  """,
  options="transform shape, scale=1.5",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-1-3")), tp)

# Overview - Propagation
tp = TikzPicture(
  L"""
    \node[mybox] (pgm) {Probabilistic Graphical Model};
    \node[mybox,below=of pgm] (jts) {Junction Tree};
    \node[mybox,below=of jts] (ijt) {Inconsistent Junction Tree};
    \node[mybox,below=of ijt] (cjt) {Consistent Junction Tree};
    \node[below=of cjt] (mar) {$P(\bm{Q} \mid \bm{E=e})$};

    \draw[myarrow] (pgm) -- (jts);
    \draw[myarrow,-] (jts) -- (ijt);
    \draw[myarrow] (ijt) -- (cjt);
    \draw[myarrow] (cjt) -- (mar);

    \path (pgm) -- node[mylabel] (gt) {Graphical\\Transformation} (jts);
    \path (jts) -- node[mylabel] (ini) {1. Initialization\\2. Observation entry} (ijt);
    \path (ijt) -- node[mylabel] (pro) {\textbf{Propagation}} (cjt);
    \path (cjt) -- node[mylabel] (mar-nor) {1. Marginalization\\2. Normalization} (mar);
  """,
  options="transform shape, scale=1.5",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-1-4")), tp)

# Overview - Marginalization
tp = TikzPicture(
  L"""
    \node[mybox] (pgm) {Probabilistic Graphical Model};
    \node[mybox,below=of pgm] (jts) {Junction Tree};
    \node[mybox,below=of jts] (ijt) {Inconsistent Junction Tree};
    \node[mybox,below=of ijt] (cjt) {Consistent Junction Tree};
    \node[below=of cjt] (mar) {$P(\bm{Q} \mid \bm{E=e})$};

    \draw[myarrow] (pgm) -- (jts);
    \draw[myarrow,-] (jts) -- (ijt);
    \draw[myarrow] (ijt) -- (cjt);
    \draw[myarrow] (cjt) -- (mar);

    \path (pgm) -- node[mylabel] (gt) {Graphical\\Transformation} (jts);
    \path (jts) -- node[mylabel] (ini) {1. Initialization\\2. Observation entry} (ijt);
    \path (ijt) -- node[mylabel] (pro) {Propagation} (cjt);
    \path (cjt) -- node[mylabel] (mar-nor) {\textbf{1. Marginalization}\\2. Normalization} (mar);
  """,
  options="transform shape, scale=1.5",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-1-5")), tp)

# Overview - Normalization
tp = TikzPicture(
  L"""
    \node[mybox] (pgm) {Probabilistic Graphical Model};
    \node[mybox,below=of pgm] (jts) {Junction Tree};
    \node[mybox,below=of jts] (ijt) {Inconsistent Junction Tree};
    \node[mybox,below=of ijt] (cjt) {Consistent Junction Tree};
    \node[below=of cjt] (mar) {$P(\bm{Q} \mid \bm{E=e})$};

    \draw[myarrow] (pgm) -- (jts);
    \draw[myarrow,-] (jts) -- (ijt);
    \draw[myarrow] (ijt) -- (cjt);
    \draw[myarrow] (cjt) -- (mar);

    \path (pgm) -- node[mylabel] (gt) {Graphical\\Transformation} (jts);
    \path (jts) -- node[mylabel] (ini) {1. Initialization\\2. Observation entry} (ijt);
    \path (ijt) -- node[mylabel] (pro) {Propagation} (cjt);
    \path (cjt) -- node[mylabel] (mar-nor) {1. Marginalization\\\textbf{2. Normalization}} (mar);
  """,
  options="transform shape, scale=1.5",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-1-6")), tp)

#------------------------------------------------------------------------------

# Prepare to denote compile time vs. run time stages
tp = TikzPicture(
  L"""
    \node[mybox] (pgm) {Probabilistic Graphical Model};
    \node[mybox,below=of pgm] (jts) {Junction Tree};
    \node[below=of jts, yshift=0.5cm] (dummy) {};
    \node[mybox,below=of dummy,yshift=0.5cm] (ijt) {Inconsistent Junction Tree};
    \node[mybox,below=of ijt,yshift=0.5cm] (cjt) {Consistent Junction Tree};
    \node[below=of cjt] (mar) {$P(\bm{Q} \mid \bm{E=e})$};

    \draw[myarrow] (pgm) -- (jts);
    \draw[myarrow,-] (jts) -- (dummy.center);
    \draw[myarrow] (dummy.center) -- (ijt);
    \draw[myarrow] (ijt) -- (cjt);
    \draw[myarrow] (cjt) -- (mar);

    \path (pgm) -- node[mylabel] (gt) {Graphical\\Transformation} (jts);
    \path (jts) -- node[mylabel] (ini) {1. Initialization} (dummy);
    \path (dummy) -- node[mylabel] (oe) {2. Observation entry} (ijt);
    \path (ijt) -- node[mylabel] (pro) {Propagation} (cjt);
    \path (cjt) -- node[mylabel] (mar-nor) {1. Marginalization\\2. Normalization} (mar);
  """,
  options="transform shape, scale=1.5",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-2")), tp)

# Denote compile time vs. run time stages
tp = TikzPicture(
  L"""
    \node[mybox] (pgm) {Probabilistic Graphical Model};
    \node[mybox,below=of pgm] (jts) {Junction Tree};
    \node[below=of jts, yshift=0.5cm] (dummy) {};
    \node[mybox,below=of dummy,yshift=0.5cm] (ijt) {Inconsistent Junction Tree};
    \node[mybox,below=of ijt,yshift=0.5cm] (cjt) {Consistent Junction Tree};
    \node[below=of cjt] (mar) {$P(\bm{Q} \mid \bm{E=e})$};

    \draw[myarrow] (pgm) -- (jts);
    \draw[myarrow,-] (jts) -- (dummy.center);
    \draw[myarrow] (dummy.center) -- (ijt);
    \draw[myarrow] (ijt) -- (cjt);
    \draw[myarrow] (cjt) -- (mar);

    \path (pgm) -- node[mylabel] (gt) {Graphical\\Transformation} (jts);
    \path (jts) -- node[mylabel] (ini) {1. Initialization} (dummy);
    \path (dummy) -- node[mylabel] (oe) {2. Observation entry} (ijt);
    \path (ijt) -- node[mylabel] (pro) {Propagation} (cjt);
    \path (cjt) -- node[mylabel] (mar-nor) {1. Marginalization\\2. Normalization} (mar);

    % Background Box
    \begin{pgfonlayer}{background}
    \node[surrbox,fill=bblue!20] [fit=(pgm)(jts)(ini), label={[surrboxlabel]left:{Compile Time}}] {};
    \node[surrbox,fill=ggreen!20] [fit=(oe)(ijt)(mar), label={[surrboxlabel]left:{Run Time}}] {};
    \end{pgfonlayer}
  """,
  options="transform shape, scale=1.5",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-3")), tp)

# Add partial evaluation step
tp = TikzPicture(
  L"""
    \node[mybox] (pgm) {Probabilistic Graphical Model};
    \node[mybox,below=of pgm] (jts) {Junction Tree};
    \node[below=of jts] (dummy) {};
    \node[mybox,below=of dummy,yshift=0.5cm] (ijt) {Inconsistent Junction Tree};
    \node[mybox,below=of ijt,yshift=0.5cm] (cjt) {Consistent Junction Tree};
    \node[below=of cjt] (mar) {$P(\bm{Q} \mid \bm{E=e})$};

    \draw[myarrow] (pgm) -- (jts);
    \draw[myarrow,-] (jts) -- (dummy.center);
    \draw[myarrow] (dummy.center) -- (ijt);
    \draw[myarrow] (ijt) -- (cjt);
    \draw[myarrow] (cjt) -- (mar);

    \path (pgm) -- node[mylabel] (gt) {Graphical\\Transformation} (jts);
    \path (jts) -- node[mylabel] (ini) {1. Initialization\\\emph{2. Partial evaluation}} (dummy);
    \path (dummy) -- node[mylabel] (oe) {3. Observation entry} (ijt);
    \path (ijt) -- node[mylabel] (pro) {Propagation} (cjt);
    \path (cjt) -- node[mylabel] (mar-nor) {1. Marginalization\\2. Normalization} (mar);

    % Background Box
    \begin{pgfonlayer}{background}
    \node[surrbox,fill=bblue!20] [fit=(pgm)(jts)(ini), label={[surrboxlabel]left:{Compile Time}}] {};
    \node[surrbox,fill=ggreen!20] [fit=(oe)(ijt)(mar), label={[surrboxlabel]left:{Run Time}}] {};
    \end{pgfonlayer}
  """,
  options="transform shape, scale=1.5",
  preamble="\\input{preamble}",
)
save(SVG(joinpath(@__DIR__, "output-4")), tp)
