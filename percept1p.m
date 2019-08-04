% percept1p.m   Train a perceptron with 1 pattern (and its targets)
%
% SYNTAX: [Wnew,bnew,e]= percept1p(Wold, bold, p, t); 
% 
function [Wnew,bnew,e]= percept1p(Wold, bold, p, t);
% n = Wold * p + bold;
% a = hardlim(Wold * p + bold);
e = t - (hardlims(Wold * p + bold));
Wnew = Wold + ( e * p');
bnew = bold + e;
end

