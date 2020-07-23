
#Exercise 2.2-2
#(a)
f(x)=x^3-25 # expressing the problem as f(x) = 0 with p = 25^(1/3) the root.

# Finding an interval (a; b) that contains the root
f(0),f(1),f(1),f(3)

#(b)
# Hence interval (0,3) should contain the root by IVT

#(c)
n=log2(3/10^(-5)) #Finding the number of iterations to obtain a specified accuracy:

# Hence number of iterates necessary to obtain the accuracy of 10^(-5) are 19.

#(d)
function bisect(a,b,eps,max_iter) # bisection method function
         steps=1
         c=0. # initialy assign so that c arries out of while loop
         while steps<=max_iter
               c = a+(b-a)/2
               if f(c)==0 || abs(a-c)<eps  # Checking if the middle point is root 
                  return c,steps
               end
               if f(a)f(c)<0  # Repeating the steps 
                  b=c
               else
                   a=c
               end
               steps +=1
          end
          y=f(c)
          println("Not converge")
end
a =0
b = 3
println(bisect(a, b,10^(-5),20))

println("Actual Absolute Error :  ", abs((25)^(1/3)-2.9240169525146484))

# Also from the bisection method the computed the iterates are also  19.
# Also the actual absolute error is low compared to 10^(-5).
