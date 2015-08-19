# kalman_filter
An implimentation of a kalman filter, a tool to estimate values in an uncertain environment with uncertain measurement

The Kalman Filter is used to estimate conditions where we are uncertain about value and we recieve measurements.

A good example is the 1 dimensional Brownian motion, where we have an object a some position X
At any moment, the position is uncertain with a gausian distribution.
For every time step (of an arbitrary amount) we apply a transition function.
In the case of the 1 dimensional movement, we simply flatten the gausian (the object randomly moves in some as-yet-unknown direction)
Finally, we udpate the gausian with a measurement (it itself a gausian distribution) which we combine with our prior.

The final process looks like this 
1. Take some initial position
2.  Update position
3.  Take measurement

More complicated examples can take the form of movement with aceleration, speed and position.  



This work will be used to hopefully represent position for a drone (to come)


