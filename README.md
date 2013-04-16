This algorithm numerically solves any arbitrary ODE numerically by using Euler's
Method. For the algorithm, we use information about the derivative from the current
point, starting from x0, to get to the next point and incorporating information about
the derivative about that point as well to get a good apporximation of the curve. To get
a decent approximation of the next point, we use a simpler version of Euler's method:
	x[n+1]=x[n]+f(x[n])dt, where x'=f(x), dt being your time step.
The information from this predictor point is f(x[n+1]), and using this new direction, we
recalculate an updated guess for our new point by averaging the two directions.
x[n+1]=x[n]+dt/2*(f(x[n])+f(x[n+1])). After it calculates 100 points (from t=0 to t=5),
it will spit out the difference between the analytic solution vector and the numerical 
solution vector, if an analytic solution exists. Else, a variable called x_euler will 
be created with the numerical solution for 100 steps stored.
	