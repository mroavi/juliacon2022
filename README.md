JunctionTrees: Bayesian inference in discrete graphical models
==============================================================

The presentation is published at https://mroavi.github.io/juliacon-2022/

Abstract:
---------

JunctionTrees.jl implements the junction tree algorithm: an efficient method to
perform Bayesian inference in discrete probabilistic graphical models. It
exploits Julia's metaprogramming capabilities to separate the algorithm into a
compilation and a runtime phase. This opens a wide range of optimization
possibilities in the compilation stage and a runtime performance comparable to
those of analog libraries written in C++ such as libdai and Merlin.

Description:
------------

JunctionTrees.jl encapsulates the result of the research we have been
conducting in the context of improving the efficiency of Bayesian inference in
probabilistic graphical models.

The junction tree algorithm is a core component of discrete inference in
probabilistic graphical models. It lies at the heart of many courses that are
taught in different universities around the world including MIT, Berkeley, and
Stanford. Moreover, it serves as the backbone of successful commercial
software, such as Hugin Expert, that aims to discover insight and provide
predictive capabilities to effectively combat fraud and risk.

JunctionTrees.jl is mainly tailored towards two groups of users: students and
researchers. This library offers a great starting point for understanding the
implementation details of this algorithm thanks to the intrinsic readability of
the Julia language and the thoroughly commented codebase. Moreover, this
package constitutes an optimization framework that other researchers can make
use of to experiment with different ideas to improve the performance of runtime
Bayesian inference.
