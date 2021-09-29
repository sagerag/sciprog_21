program conversion
!Declare variables
   integer (kind = 4) :: i, N
   real (kind = 4) :: a, b, PI, fa, fb, point, total, check
   PI = 3.14
   a = 0.0
   b = PI/3
   N = 12
   total = 0.0
   check = log(2.0)
!Calculate first part of sum

   fa = tan(a)
   fb = tan(b)

!Loop with equidistant points between a and b
   do i = 1,N
      point = ((b-a)*i)/N
      write(6,*) 'point',i ,'=',point
      total = total +2*tan(point)
      write(6,*) 'total', i, '=', total
   end do

   total = total*((b-a)/(2*N))
   write(6,*) 'total= ',total
   write(6,*) 'compare= ', check

end program conversion   
