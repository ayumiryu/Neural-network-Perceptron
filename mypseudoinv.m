% mypseudoinv  calculates the Moore-Penrose pseudoinverse of matrix M
%
% SYNTAX MPLUS  = mypseudoinv(M);
%
function MPLUS = mypseudoinv(M)

MPLUS = inv(M' * M ) * M' ;

end