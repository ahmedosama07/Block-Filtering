%Linear Convolution
%% Overlap Save 
t = linspace(0, 2, 10000);
f = 100;
sinwave = sin(2*pi*f*t);
load("Overlap Save\h.mat");
output = conv(sinwave, h);
plotTime = linspace(0, 2, length(output));
subplot(2,1,1);
plot(plotTime, output);
title("overlap save");
%% Overlap Add
t = linspace(0, 2, 10000);
f = 100;
sinwave = sin(2*pi*f*t);
load("Overlap Add\h.mat");
output = conv(sinwave, h);
plotTime = linspace(0, 2, length(output));
subplot(2,1,2);
plot(plotTime, output);
title("overlap add");