%% How do I plot a sine wave?
x = linspace(0, 2*pi, 1000);
y = sin(x);
plot(x, y);
xlabel('x');
ylabel('y');
title('Sine Wave');


%% Can I plot multiple sine waves on the same plot?
x = linspace(0, 2*pi, 1000); 
y1 = sin(x); 
y2 = sin(2*x); 
y3 = sin(3*x); 

plot(x, y1, 'r', x, y2, 'g', x, y3, 'b'); 
xlabel('x'); 
ylabel('y'); 
title('Multiple Sine Waves'); 
legend('y = sin(x)', 'y = sin(2x)', 'y = sin(3x)');

%% Can I add more sine waves to the plot?
x = linspace(0, 2*pi, 1000);
y1 = sin(x);
y2 = sin(2*x);
y3 = sin(3*x);

plot(x, y1, x, y2, x, y3);
legend('y1', 'y2', 'y3');
xlabel('x');
ylabel('y');
title('Multiple Sine Waves');


%% How can I adjust the amplitude and frequency of each sine wave?

% Define the time vector
t = 0:0.01:2*pi;

% Define the amplitude and frequency of the sine wave
amplitude = 2;
frequency = 1;

% Generate the sine wave
y = amplitude*sin(2*pi*frequency*t);

% Plot the sine wave
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Sine Wave');


%% How can I add noise to a sine wave?

% Generate a sine wave
t = 0:0.01:2*pi;
y = sin(t);

% Generate random noise
noise = 0.1*randn(size(t));

% Add noise to the sine wave
y_noisy = y + noise;

% Plot the results
plot(t,y,'b-',t,y_noisy,'r-');
legend('Sine Wave','Noisy Sine Wave');
xlabel('Time (s)');
ylabel('Amplitude');


%% How can I analyze the frequency content of the noisy signal?
signal = % insert your noisy signal here
Fs = % insert the sampling frequency of your signal here
N = length(signal);
Y = fft(signal);
P2 = abs(Y/N);
P1 = P2(1:N/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(N/2))/N;
plot(f,P1)
xlabel('Frequency (Hz)')
ylabel('Magnitude')

%% How can I interpret the plot of the FFT?
 % Generate a signal
t = linspace(0, 1, 1000);
f = 10;
x = sin(2*pi*f*t);

% Compute the FFT
N = length(x);
X = fft(x);

% Plot the FFT
frequencies = linspace(0, 1, N/2+1)*N/2;
plot(frequencies, abs(X(1:N/2+1)));
xlabel('Frequency');
ylabel('Magnitude');

%% What does the peak in the FFT plot represent?
X = fft(x);
plot(abs(X));

%% Can you explain what the units of the frequency axis are in an FFT plot?

%% Can you show an example of how to plot an FFT in MATLAB?
 % Generate a signal
fs = 1000; % Sampling frequency
t = 0:1/fs:1-1/fs; % Time vector
f = 10; % Signal frequency
x = cos(2*pi*f*t); % Signal

% Compute the FFT
N = length(x); % Length of signal
X = fft(x); % FFT of signal
X_mag = abs(X)/N; % Magnitude of FFT
f = (0:N-1)*(fs/N); % Frequency vector

% Plot the FFT
plot(f,X_mag) 
xlabel('Frequency (Hz)')
ylabel('Magnitude')
title('FFT of Signal')


