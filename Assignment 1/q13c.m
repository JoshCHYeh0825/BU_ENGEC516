clc;
clear all;
close all;

% Part c
T = 2;              % Period
k = -10:10;           % Integer variables for k

% Calculating the Coefficients of the Fourier Series
ak = ones(size(k)) * (1/T);

% Plot the coefficients using the stem function
figure;
stem(k, ak);
title('Fourier Series Coefficients a_k for T = 2');
xlabel('k');
ylabel('a_k');
grid on;