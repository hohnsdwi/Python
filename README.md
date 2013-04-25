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

Example::
	For dx/dt=f(x), where f(x)=1-x^2, with initial condition x(0)=0, solved
		analytically yields x(t)=tanh(t). Let t be a vector of evenly spaced
		points in time from 0 to 5s seperated by 0.05s. Then the program will
		yield an analytic solution vector x with values equal to x(t). Then, 
		it will pass the vector t, initial condition x(0), and your time step
		to the function NumSolve. Here you will find where dx/dt is defined 
		(named dx in the code). It will then use Euler's method to populate a 
		solution vector that solved the ODE numerically and return that vector.
		Once returned, if you solved for an analytic solution, it will compute 
		the average pointwise distance between the analytical solution and the 
		numerical solution. Else, it notifies the user that the solution vector
		is ready to be used.
		

Optimization::
	Before cython implementation: 146ms
	After  cython implementation: 4.15ms
	~35x faster