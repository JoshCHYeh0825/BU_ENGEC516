clc;
clear all;
close all;

% Part b
% Define parameters for the signal
T = 2;          % 0.5 Width of pulse
Fs = 1000;      % Sampling frequency, Hz
dt = 1/Fs;      % Sampling Period, s
t = -10:dt:10;  % Time vector

% Impulse Signal
x = heaviside(t + T) - heaviside(t - T);

% Number of samples
N = length(x);

% Magnitude
mag = abs(fft(x));
mag = mag * dt;

% Frequency vector
w = (-N/2:N/2-1) * (Fs/N);

% Shift to the center of the spectrum
mag_shifted = fftshift(mag);

% Plotting the Magnitude Spectrum
plot(w, mag_shifted);
title('Magnitude of FT of Rectangular Pulse');
xlabel('Frequency (Hz)');
ylabel('|X(jω)|');
xlim([-10 10]);
grid on;


