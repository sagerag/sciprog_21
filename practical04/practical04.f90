!PROGRAM FOR PRACTICAL 04 IN COURSE
!CONTAINS FOLLOWING SUBROUTINES
!DEGTOGRAD - INPUT ARGUMENT IN DEGREES AND OUTPUTS IN RADIANS
!TRAPRULE - INPUT NUMBER OF POINTS AND CALCULATES INTEGRAL OF TANX
!       BETWEEN PI/3 AND 0 AND OUTPUTS AREA
      program main
        !DEFINE VARIABLES
        integer (kind=4) :: i
        real (kind=4) :: degang,radang, area
        real, dimension(12) :: tanAnVector

!       LOOP FROM 0-60 IN 5 DEGRESS INCREMENTS OUTPUT TANX VECTOR
        do i = 0, 60, 5
          degang = i 
          call  degtorad(degang,radang)
          tanAnVector(i) = tan(radang)
          write(6,*) "Deg ", degang, "Rad ", radang, "tanx ", tanAnVector(i)
        end do
        call trapRule(12, area) 
        write(6,*) "Area", area
      end program main

      subroutine degtorad(arg,arg2)
        real (kind=4), intent(in) :: arg
        real (kind=4), intent(out) :: arg2
        real (kind=4) :: pi = 3.1415927
        arg2 = (pi*arg)/180.0
      end subroutine degtorad

      subroutine trapRule(arg,arg2)
        integer (kind=4), intent(in) :: arg
        real (kind=4), intent(out) :: arg2
        real (kind=4) :: a,b,degang,radang,total,point
        integer (kind=4) :: i
        
        a = 0
        b = 1.0471975512
        write(6,*) arg
        do i = 1, arg
          degang  = ((b-a)*i)/arg
          write(6,*) degang
          total = total + 2*tan(degang)
          write(6,*) total 
        end do  
        
        arg2  = total * ((b-a)/(2*arg))
      end subroutine trapRule
