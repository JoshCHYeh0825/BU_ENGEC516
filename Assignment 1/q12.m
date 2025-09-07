Fs = 1000;           % Sampling frequency (Hz), must be > 400 Hz
T = 2;               % Signal duration (s)
t = 0:1/fs:T-1/fs;   % Time vector
x = cos(400*pi*t);   % Signal