% perceptdem2d  demonstrates implementation of perceptron rule
% for 2-D patterns as columns of matrix PATS, with
% scalar binary (0 or 1) targets in row vector TARGS
% initilized with Winit = [w1,w2] and bias binit
% executing is PAUSED after each pattern, so hit tab to continue
% 
% SYNTAX: lastepoch = percepdem2d(PATS, TARGS, Winit, binit, maxepochs);
%
function lastepoch = percepdem2d(PATS, TARGS, Winit, binit, maxepochs);

%Read prameters from the data (PATS and TARGS)

[rpats,cpats] = size(PATS);
ayz = zeros(1, 250);%for saving the training process

%Initialization
Wthis = Winit;
bthis = binit;

for ep = 1:maxepochs
    ep = ep;
    for patnum = 1: cpats

[Wnew,bnew,e]= percept1p(Wthis, bthis, PATS(:,patnum), TARGS(patnum));
%above is for perceptron A&E detector

close all;
        lastepoch = ep;
        a_before = hardlims(Wthis*PATS(:,patnum)+bthis)
        ayz((ep-1)*25+patnum) = bthis;
        figure; chkbrd1 ( ctom(PATS(:,patnum),4,5));
%         a_after = hardlims(Wnew*PATS(:,patnum)+bnew);
% NOW PASS RECENT RESULTS TO BE USED AS OLD IN NEXT PATTERN PRESENTATION
% also used to output the value of w,b,a,ep
Wthis = Wnew
bthis = bnew

%output the record of training process, need change the end of for loop to above
%       m = ayz;
%       plot(ayz);
%       axis([0,300,-20,8]);

      pause;
            end   % end of all patterns in one epoch
end % end of all epochs
end  % end of the function



