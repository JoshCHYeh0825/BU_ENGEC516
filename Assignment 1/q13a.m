clc;
clear all;
close all;

% Part a
T = 1;              % Period
k = -5:5;           % Integer variables
impulse = k * T;    % t = kT

amp = ones(size(impulse));

% Create a new figure and plot using stem
figure;
stem(impulse, amp, 'filled', 'LineWidth', 1.5, 'MarkerSize', 8);

% --- Formatting for a clean look ---
title('Impulse Train m(t) for T = 1', 'FontSize', 14);
xlabel('Time (t)', 'FontSize', 12);
ylabel('m(t)', 'FontSize', 12, 'Rotation', 0, 'HorizontalAlignment', 'right');
grid on;
ylim([0 1.2]);
xlim([min(k)-1 max(k)+1]);

% Move axes to the origin
ax = gca; % Get current axes
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
box off;