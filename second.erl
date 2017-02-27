
% https://learnxinyminutes.com/docs/erlang/ 
-module(second).
-export([hypotenuse/2, perimeter/2, maxThree/3, fib/1 , fib2/1, fact/1]).

hypotenuse(A,B) ->
     math:sqrt(math:pow(A,2)+math:pow(B,2)).

perimeter (A,B) ->
(A+B+hypotenuse(A,B)).     

% max Version
maxTwo(A,B) when  A > B -> A;
maxTwo(A,B) -> B.    


maxThree(A,B,C) ->
        maxTwo(maxTwo(A,B),C).


fib2(N) when N==0 -> 0;
fib2(N) when N==1 -> 1;
fib2(N) when N > 1 ->  
   fib2(N-1)+fib2(N-2).      

fib(0) -> 0;
fib(1) -> 1;
fib(N) when N > 1 ->  
   fib(N-1)+fib(N-2).      

% tail recursion acumulator P is a acunulator 
fact(N) -> 
  fact(N,1).
fact(0,P) -> P;
fact(N,P) when N>0 ->
   fact(N-1, P*N).
