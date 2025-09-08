clc;
clear all;
close all;

% Part a
% Define parameters for the signal
T = 2;
Fs = 1000;      % Sampling frequency, Hz
dt = 1/Fs;      % Sampling Period, s
t = -5:dt:5;    % Time vector
N = T * Fs;     % Number of samples

% Impulse Signal
impulse = round(N/2);
x = zeros(1, N);
x(impulse) = 1;

% Magnitude
mag = abs(fft(x));

% Frequency vector
f = (0:N-1) * (Fs/N);

% Plotting the Magnitude Spectrum
plot(f, mag);
title('Magnitude of FT of an Impulse');
xlabel('Frequency (Hz)');
ylabel('|X(jω)|');
grid on;


