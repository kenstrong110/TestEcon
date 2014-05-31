module newton

	! module parameter 
	implicit none 
	integer, parameter :: maxiter = 20 
	real(kind=8), parameter :: tol =1.d-14

contains 
subroutine solve(f,fp,x0,x,iters,debug)

	! Estimate the zero of f(x) using Newton's method.
	! Input:
	!   f: the function to find a root of
	!	fp: function returning the deviative f
	!	x0: the initial guess
	!	debug: Logical, prints iterations if debug=. true.
	! Returns:
	!	the estimate x satisfying f(x)=0 (assume Newton converge)
	!	the number of iterations iters

	implicit none 
	real(kind=8), intent(in) :: x0
	real(kind=8), external :: f, fp 
	logical, intent(in) :: debug 
	real(kind=8),intent(out)::x 
	integer, intent(out) :: iters 

	! Declare any local variables:
	real(kind=8) :: deltax, fx, fxprime
	integer :: k 

	! initial guess
	x = x0

	if (debug) then 
		print ll, x
		format('Initial guess: x = ', e20.15)
			endif

	! Newton iteration to find a zero of f(x) 
	do k=1, maxiter

		! evaluate function and its derivative
		fx = f(x)
		fxprime =  fp(x)

		if (abs(fx)<tol) then
			exit ! jump out of loop
			endif

	





end module newton 