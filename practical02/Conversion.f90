program conversion
! Declare variables 
   integer (kind=4) :: i,inum,tmp,numdigits,zero,binDigits
   real(kind=4) :: fnum

! Intialise 4-byte integer
   inum = 500
! Convert to 4-byte float
   fnum = real(inum)       
! Initialise zero integer
   zero = 0   
   numdigits = 0

! Complete the expression
!  numdigits = nint(...) 
!  write(6,*) ' The number of digits is ',numdigits

   do while (inum /=  zero)
        inum = inum/10
        numdigits = numdigits + 1
   end do

   binDigits = log(fnum) / log(2.0) + 1

   write(6,'(a,i0,a,f0.1,a,b0)')  'inum=',inum,', fnum=',fnum,', inum in binary=',inum
   write(6,'(a,i0)') 'numdigits=',numdigits
   write(6,'(a,i0)') 'binDigits=',binDigits
   
end program conversion
