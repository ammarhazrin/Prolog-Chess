# Prolog-Chess
Let the squares of the chessboard be represented by pairs of their coordinates of the form X/Y, where both X and Y are between1 and 8. 

(a) Define the relation jump( Square1, Square2) according to the knight jump on the chessboard. Assume that Square1 is always instantiated to a square while Square2 can be uninstantiated. For example: 
?- jump( 1/1,S). 
S= 3/2; 
S= 2/3; 
no 

(b) Define the relation knightpath( Path) where Path is a list of squares that represent a legal path of a knight on the empty chessboard.

(c) Using this knightpath relation, write a question to find any knight's path of length 4 moves from square 2/1 to the opposite edge of the board (Y = 8) that goes through square 5/4 after the second move. 
