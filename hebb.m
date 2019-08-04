%for Hebb training to get weights
%Syntax: Wnew = hebb(), to get the training weights value

function Wnew= hebb()
p1 = [-1 , -1, 1, 1, -1, 1, 1, -1, 1, -1, 1, -1, -1, 1, 1, -1, -1, -1, 1, 1];
p6 = [1 , 1, 1, 1, 1, -1, 1, 1, 1, -1, 1, 1, 1, -1, -1, 1, 1, -1, -1, 1];
p11 = [-1 , -1, -1, -1, 1, -1, -1, 1, 1, 1, 1, 1, 1, -1, -1, 1, -1, -1, -1, -1];
p16 = [1 , 1, 1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, 1, 1, 1];
p21 = [1 , 1, 1, 1, -1, -1, -1, 1, -1, -1, -1, 1, -1, -1, -1, 1, 1, 1, 1, 1];
PATS = [p1;p6;p11;p16;p21];

t1 = [-1, -1, 1];
t6 = [-1, 1, -1];
t11 = [-1, 1, 1];
t16 = [1, -1, -1];
t21 = [1, -1, 1];

TARGS = [t1;t6;t11;t16;t21]';
Wnew = TARGS*PATS
% Wnew = t21'*p21;

end
