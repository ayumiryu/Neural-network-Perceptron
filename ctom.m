% ctom : converts a column vector into a matrix of rn rows and cn columns (for display)
% SYNTAX:  mtxout = ctom(cin,rn,cn);
function mtxout = ctom(cin,rn,cn);

mtxout = reshape(cin,rn,cn);
end


