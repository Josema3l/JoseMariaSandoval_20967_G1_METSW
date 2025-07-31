 function [x] = S38JSP(fx,a,b,n)
 %function [x] = S38JSP ('cos(1-x.^2)',0,1,10)
 M=(n-1)/3;
 h=(b-a)/(n-1);
 f = str2func(['@(x) ' fx]);
 for i=0:(3*h):(b-3*h)
     if i==0
         integra=3*(f(a)+3*f(a+i)+3*f(a+2*i)+f(a+3*i))/8;
     else
         integra=integra+3*(f(a+i)+3*f(a+i+h)+3*f(a+i+2*h)+f(a+i+3*h))/8;
     end
 end
 x=integra;
 end