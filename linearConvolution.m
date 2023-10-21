%Linear Convolution
Fs = 8000;
Ts = 1/Fs;
t = 0:Ts:1;
f = 100;
sinwave = sin(2*pi*f*t);
%% Overlap Save 
load("Overlap Save\h.mat");
output = conv(sinwave, h);
subplot(2,1,1);
plot(t, output(1:length(t)));
title("overlap save");
%% Overlap Add
load("Overlap Add\h.mat");
output = conv(sinwave, h);
subplot(2,1,2);
plot(t, output(1:length(t)));
title("overlap add");