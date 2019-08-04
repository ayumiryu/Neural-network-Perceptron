% w = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];b = -0.5;maxepochs=10;
% SYNTAX: lastepoch = percepdemo( w , b, maxepochs);
% Doing E detector, please change the TARGS to E
% Execution pauses after each pattern - press space bar to advance
function  lastepoch = percepdemo( Wini , bini, maxepochs)

p1 = [-1 , -1, 1, 1, -1, 1, 1, -1, 1, -1, 1, -1, -1, 1, 1, -1, -1, -1, 1, 1];
p6 = [1 , 1, 1, 1, 1, -1, 1, 1, 1, -1, 1, 1, 1, -1, -1, 1, 1, -1, -1, 1];
p11 = [-1 , -1, -1, -1, 1, -1, -1, 1, 1, 1, 1, 1, 1, -1, -1, 1, -1, -1, -1, -1];
p16 = [1 , 1, 1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, 1, 1, 1];
p21 = [1 , 1, 1, 1, -1, -1, -1, 1, -1, -1, -1, 1, -1, -1, -1, 1, 1, 1, 1, 1];

p2 = toggle(p1, 2, 1);
p3 = toggle(p1, 3, 2);
p4 = toggle(p1, 3, 4);
p5 = toggle(p1, 4, 4);

p7 = toggle(p6, 2, 2);
p8 = toggle(p6, 4, 2);
p9 = toggle(p6, 5, 3);
p10 = toggle(p6, 4, 3);

p12 = toggle(p11, 1, 1);
p13 = toggle(p11, 4, 2);
p14 = toggle(p11, 1, 4);
p15 = toggle(p11, 4, 3);

p17 = toggle(p16, 2, 2);
p18 = toggle(p16, 4, 2);
p19 = toggle(p16, 2, 3);
p20 = toggle(p16, 4, 3);

p22 = toggle(p21, 2, 1);
p23 = toggle(p21, 4, 1);
p24 = toggle(p21, 2, 3);
p25 = toggle(p21, 4, 3);

PATS = [p1;p2;p3;p4;p5;p6;p7;p8;p9;p10;p11;p12;p13;p14;p15;p16;p17;p18;p19;p20;p21;p22;p23;p24;p25]' ;
% TARGS = [1 , 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1] ;
% ABOVE tuple used for A detector, and below used for E detector
TARGS = [-1 , -1, -1, -1, -1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1] ;

lastepoch = perceptdem2d(PATS, TARGS, Wini, bini, maxepochs);


end   % End of function percepdemo
