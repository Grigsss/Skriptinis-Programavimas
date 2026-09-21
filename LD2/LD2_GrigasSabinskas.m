%Grigas Sabinskas EIRf-25 2026-09-21
clear
close all
x = -pi/2: 0.5 :3*pi;
y = x.^2
c = sin(x+y);
c = c'
Z = rand(3,"single")
Z(:,2) = [];
Z = Z'
%%
clear
close all

t = 0:0.002:1.5;
A = 4;
f = 3;
o = 1;
U1 = 2.5;
U2 = 1.5;

s = A * sin(2*pi*f*t);
n = o * randn(size(t));
x = s + n;

virs = x(x > U1);

xf = x;
xf(abs(xf) < U2) = 0;

dydis_x = length(x)

dydis_virs = length(virs)

maks = max(xf)
min_reiksme = min(xf)