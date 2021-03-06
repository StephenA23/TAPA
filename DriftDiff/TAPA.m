Coupled = 1;
TwoCarriers = 1;
RC = 1;

nx = 201;
l = 1e-6;

x =linspace(0,l,nx);
dx = x(2)-x(1);
xm = x(1:nx-1) + 0.5*dx;


Nd = linspace(1e16, 20e16, nx); %linear gradient generation for donors
%Nd = 1e16 * 1e6; % Const. 1/cm3 (100 cm/m)^3
NetDoping = ones(1,nx).*Nd; % doping

x0 = l/2;
nw = l/20;
%npDisturbance = 1e16*1e6*exp(-((x-x0)/nw).^2);
npDisturbance = 0;

LVbc = 0;
RVbc = 0;

TStop = 14200000*1e-18;
PlDelt = 100000*1e-18;

PlotYAxis = {[-1e-6 1e-6] [-5 10] [-0.01 0.01]...
    [0.5e16 2.5e17] [0.5e15 5e15] [0 5e31]...
    [-1e28 1e28] [-10e26 5e26] [-100 20] ...
    [-10 0.2] [0 0.01] [0 2e17]};

doPlotImage = 0;
PlotFile = 'Gau2CarRC.gif';