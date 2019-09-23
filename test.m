% Test LEROI_TEM

% The input below is equivalent to the Leroi.cfl content:
%
% 1.05 1.05             ! REFTYM, OFFTYM
% 0.0     0.0
% 0.001   1.0
% 1.0492  1.0
% 1.05    0.0           ! TXON, TXAMP(NSX)
%
% 3 0 3                 !! NLYR, NPLT, NLITH
% 9.9773 -1 1 1 0 0 1
% 2035.84 -1 1 1 0 0 1 
% 887.959 -1 1 1 0 0 1  !! LYTH(NLITH, 7)
% 1 94.2462
% 2 34.1019             !! LITHL(NLYR - 1), THK(NLYR - 1)
% 3                     !! LITH(NLYR) 

REFTYM = 1.05;
OFFTYM = 1.05;
TXON   = [0.0, 0.001, 1.0492, 1.05];
TXAMP  = [0.0, 1.0, 1.0, 0.0];
NLYR   = 3;
NPLT   = 0;
NLITH  = 3;
LYTH   = [9.9773, -1, 1, 1, 0, 0, 1; 2035.84, -1, 1, 1, 0, 0, 1; 887.959, -1, 1, 1, 0, 0, 1];
LITHL  = [1, 2, 3];
THK    = [94.2462, 34.1019];

LEROI_TEM(REFTYM, OFFTYM, TXON, TXAMP, NLYR, NPLT, NLITH, LYTH, LITHL, THK)
