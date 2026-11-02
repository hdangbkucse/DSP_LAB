
clear;
clc;

x = [1, 2, -3, 2, 1];
h = [1, 0, -1];

y = convol(h, x);

// Time indices
n_x = 0:length(x)-1;
n_y = 0:length(y)-1;


// Total energy
E_x = sum(x.^2);
E_y = sum(y.^2);

// Instantaneous energy
Ex_n = x.^2;
Ey_n = y.^2;

// Display results
disp("Input signal x(n):");
disp(x);

disp("Convolution output y(n):");
disp(y);

disp("Total input energy E_x:");
disp(E_x);

disp("Total output energy E_y:");
disp(E_y);


scf(0);
clf();

// Plot 1: Input signal
subplot(3, 1, 1);
plot2d3(n_x, x, style=2);
xgrid();
xtitle("Input Signal x(n) | Total Energy E_x = " + string(E_x), ...
       "Time Index n", "Amplitude");

// Plot 2: Convolution output
subplot(3, 1, 2);
plot2d3(n_y, y, style=3);
xgrid();
xtitle("Convolution Output y(n) | Total Energy E_y = " + string(E_y), ...
       "Time Index n", "Amplitude");

// Plot 3: Instantaneous energies
subplot(3, 1, 3);

plot2d3(n_x, Ex_n, style=2);

// Preserve the first plot while adding the second
ax = gca();
ax.auto_clear = "off";

plot2d3(n_y, Ey_n, style=5);

ax.auto_clear = "on";

xgrid();
xtitle("Instantaneous Energy: x^2(n) and y^2(n)", ...
       "Time Index n", "Energy Value");

// Set appropriate bounds for nonnegative energy
ax = gca();
ax.data_bounds = [0, 0; max(n_y), max([Ex_n, Ey_n]) + 1];

legend(["x^2(n)", "y^2(n)"]);
