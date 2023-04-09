%% How do I plot a sine wave?
x = linspace(0, 2*pi, 1000);
y = sin(x);
plot(x, y);
xlabel('x');
ylabel('y');
title('Sine Wave');


%% How can I change the frequency of the sine wave?
t = 0:0.001:1; 
f = 2; 
y = sin(2*pi*f*t);

