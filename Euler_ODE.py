from math import *

dt=0.05                                      #Time Step
tf=5                                         #Ending time
t=[i*dt for i in range(101)]                 #Times to evaluate each function
x=[tanh(t[i]) for i in range(len(t))] 		 #Analytic solution for dx/dt=1-x**2
x0=0                                  		 #Initial Condition

def NumSolve(t, x0, dt):
	"""
	Takes a list of times, an initial condition, and a time step
		to solve an ODE numerically using Euler's method, returning
		a points along a solution curve. The default equation to solve
		will be dx=1-x^2. If you wish to change the function, change 
		dx and dx_pp accordingly by following the comment guidelines.
	"""
	sol=[x0]
	for i in range(len(t)):
		dx = 1 - (sol[i])**2                 #The derivative we will be solving for
		pp = sol[i] + dt*dx                  #The predictor point
		dx_pp = 1 - pp**2				     #Plugging predictor point into the derivative
		sol.append(sol[i] + (dt/2)*(dx + dx_pp)) #The improved Euler method
	return sol


x_euler=NumSolve(t, x0, dt)

dist=[x[i]-x_euler[i] for i in range(len(t))] #Distance between each point from the actual solution
error=0
for i in range(len(dist)):
	error=error + fabs(dist[i])
error=error/len(dist)
print("The average error between numerical and actual solution for dx/dt=1-x^2 is " + str(round(error,5)) + "\n This was computed using " + str(tf/dt) + " time steps")