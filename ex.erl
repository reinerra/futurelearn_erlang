-module(ex).
-export([perimeter/1, area/1, bits/1, unit_test/0 ]).

% Unit Test   
unit_test() ->
    perimeter_tests(),
    area_tests(),
    bits_tests(),
    io:format("test  successful ").

perimeter_tests() ->
    12 = perimeter({square, 3}),
    14 = perimeter({rectangle, 3, 4}),
    12 = perimeter({triangle, 3, 4, 5}),
    18.84955592153876 = perimeter({circle, 3}).

area_tests() ->
    9 = area({square, 3}),
    12 = area({rectangle, 3, 4}),
    6.0  = area({triangle, 3, 4, 5}),
    28.274333882308138 = area({circle, 3}).

bits_tests() ->
    0 = bits(0),
    1 = bits(1),
    1 = bits(2),
    2 = bits(3),
    1 = bits(8).

% Calculate Area's  Shape   
area({square,A}) ->
    A*A;
area({rectangle,A,B}) ->
    A*B;
area({circle,Radius}) ->
    math:pi()*Radius*Radius;
area({triangle,A,B,C}) ->
    S = (A+B+C)/2,
    math:sqrt(S*(S-A)*(S-B)*(S-C));
area(Other) ->
    {error, invalid_object}.

% Calculate perimeter's  Shape  
perimeter({square,A}) ->
    4*A;
perimeter({rectangle,A,B}) ->
    2*(A+B);
perimeter({circle,Radius}) ->
    math:pi()*2*Radius;
perimeter({triangle,A,B,C}) ->
    (A+B+C);
perimeter(Other) ->
    {error, invalid_object}.

% Calculate How many 1 has a number  
bits(N) -> 
   bits(N, 0).
bits(0, P) -> P;
bits(N, P) ->
    bits(N div 2, (N rem 2)+P).
