# A simple finite differencing example in matlab, from my math 307 homework

Define the function G(x;ξ) as the solution of the boundary value problem.

<img src="https://latex.codecogs.com/gif.latex?\frac{d^2G}{dx^2}&space;=&space;\frac{1}{\sqrt{2\pi&space;\sigma^2}}e^{\frac{-(x-\xi)^2}{2\sigma^2}}" title="\frac{d^2G}{dx^2} = \frac{1}{\sqrt{2\pi \sigma^2}}e^{\frac{-(x-\xi)^2}{2\sigma^2}}" />

0 < x < 1, and G(0;ξ) = 0 ; G(1;ξ) = 0

(a) Use finite differences to solve numerically for G(x, ξ) when ξ = 0.7 and σ = 1, 0.1, and 0.01. Plot all solutions in
one figure. As σ becomes small, does the solution fit your intuition?

(b) Use finite differences to solve numerically for G(x, ξ) when σ = 0.01 and ξ = 0.2, 0.5 and 0.7. Plot all solutions in
one figure.

(e) Compute the deflection of the same string when the loading is given by f(x) = 1 − x
That is, replace the function on the right-hand side of the equation by f(x). Plot the solution.
