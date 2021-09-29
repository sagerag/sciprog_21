!program uses trapezoidal rule for numerical integration of 
!tangent function between 0 and pi/3

program conversion
!Declare variables
   integer (kind = 4) :: i, N
   real (kind = 4) :: a, b, PI, fa, fb, point, total, check
!pi varialbe for calculations
   PI = 3.14
!beginning of integral
   a = 0.0
!end of integral
   b = PI/3
!number of equidistant points - 1
   N = 12
!initialize total varible
   total = 0.0
!analytical solution for check
   check = log(2.0)


!Loop with equidistant points between a and b
   do i = 1,N

!calculate point for this increment
      point = ((b-a)*i)/N
      write(6,*) 'point',i ,'=',point

!calculate total in this increment
      total = total +2*tan(point)
      write(6,*) 'total', i, '=', total
   end do

!calculate total and print with compare
   total = total*((b-a)/(2*N))
   write(6,*) 'total= ',total
   write(6,*) 'compare= ', check

end program conversion   
