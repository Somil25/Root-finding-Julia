
# Excercise 2.4.1
# find roots of sin(x)-exp(-x) using Newton's Method.
func(x)= sin(x)-exp(-x) # Defining function
derivative(x)= cos(x)+exp(-x) # Defining derivative of function
d=[]
function newtons(x,max_iter=20,tol = 1e-4)  # Defining newton method function
         steps=1
         z=0
         y = func(x) / derivative(x) 
         while (steps < max_iter && abs(y) >= tol) 
               y = func(x)/derivative(x) 
               z = x - y  # b=a-f(a)/f'(a)
               x=z
               steps += 1
         append!(d,z)
         end
         return x,steps
end
  
a= 0 # Initial a value taken
println(newtons(a))
s=[] #tolerance for different steps
for i in 1:4
      m=abs(d[i]-0.5885327439774188)
      append!(s,m)
    end   

# find roots of sin(x)-exp(-x) using Secant Method.
f(x)= sin(x)-exp(-x)
l=[]
function secant(f, a, b, max_iter=20, tol = 1e-4) # Defining secant method function
         steps = 1
         c=0  # initialy assign so that c arries out of while loop
         while (steps < max_iter && abs(b-a) > tol)
                c = b - ( (f(b) * (b - a)) / (f(b) - f(a)) ) # c=b-f(a)*(b-a)/(f(b)-f(a))
                b, a = c, b
                steps += 1
         append!(l,c)
         end
         return c,steps
end

 # Initial a and b value taken  
a= 0 
b=1
println(secant(f,a,b))
j=[]#tolerance for different steps
for i in 1:5
      p=abs(l[i]-0.5885327423478889)
      append!(j,p)
    end  

# Plotting for visual inspection of the estimates
using PyPlot
e=[1,2,3,4] 
plot(e,s,label="Newton Method")
g=[1,2,3,4,5]
plot(g,j,label="Secant Method")
xlabel("Iteration number")
ylabel("Tolerance")
legend(loc="upper right");

# Comment
#from plot it can be seen that for iteration no.=2, the newton method give less tolerance than secant method.
#from the plot newton method shows fast convergence although secant method do catch-up latter.
# Also iteration for newton method(4)are less campared to secant method(5) for same tolerance.

q(x)= sin(x)
h(x)=exp(-x)
xi=0:1/10:1
funct=map(q,xi)
gunct=map(h,xi)
plot(xi,funct,label="sin(x)")
plot(xi,gunct,label="exp(-x)")
xlabel("X-axis")
ylabel("Y-axis")
legend(loc="upper right");

# from the above plot it can be seen that root is close to 0.6
# And our values are very closet to the roots
