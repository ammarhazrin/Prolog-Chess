% Question 1
% square/2
% square(X/Y, X1/Y1) is true only if the coordinate is a valid position. on the 8x8 chessboard.
square(X/Y, X1/Y1):-
    member(X, [1,2,3,4,5,6,7,8]),
    member(X1, [1,2,3,4,5,6,7,8]),
    member(Y, [1,2,3,4,5,6,7,8]),
    member(Y1, [1,2,3,4,5,6,7,8]).


% jump/2
% Square1/Square2 represents a place or coordinate on the chessboard.
% jump(Square1, Square2) represents a position of the knight.

jump(X/Y, X1/Y1) :-
  square(X/Y, X1/Y1),
  X1 is X + 2,
  Y1 is Y + 1.
jump(X/Y, X1/Y1) :-
  square(X/Y, X1/Y1),
  X1 is X + 1,
  Y1 is Y + 2.
jump(X/Y, X1/Y1) :-
  square(X/Y, X1/Y1),
  X1 is X + 2,
  Y1 is Y - 1.
jump(X/Y, X1/Y1) :-
  square(X/Y, X1/Y1),
  X1 is X + 1,
  Y1 is Y - 2.

jump(X/Y, X1/Y1) :-
  square(X/Y, X1/Y1),
  X1 is X - 2,
  Y1 is Y - 1.
jump(X/Y, X1/Y1) :-
  square(X/Y, X1/Y1),
  X1 is X - 1,
  Y1 is Y - 2.

jump(X/Y, X1/Y1) :-
  square(X/Y, X1/Y1),
  X1 is X - 2,
  Y1 is Y + 1.
jump(X/Y, X1/Y1) :-
  square(X/Y, X1/Y1),
  X1 is X - 1,
  Y1 is Y + 2.

% Question 2
% knightpath/2 represents the legal pathway of the knight.

knightpath([Square]).
knightpath( [S1, S2 | Rest] ):-
    jump( S1, S2),
    knightpath( [S2 | Rest] ).

% Question 3

% ?- knightpath([2/1,J,5/4,K,X/8]). 
% Where J is the first possible move
% Where K is the third possible move
% Where X is the possible X-coordinate for move={jump(X/8,X1/Y1)}