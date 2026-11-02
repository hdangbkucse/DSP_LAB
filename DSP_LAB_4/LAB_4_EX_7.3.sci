
clear;
clc;

// The first element corresponds to n = 0
x = [1; 2; -3; 2; 1];
h = [1, 0, -1, -1, 1];

// Calculate signal lengths
Nx = length(x);
Nh = length(h);
Ny = Nx;

H = zeros(Ny, Nx);

for n0 = 0:Ny-1

    for k = 0:Nx-1

        // Index of h(k) in the convolution sum
        h_index = pmodulo(n0 - k, Nx);

        // Check whether h(h_index) exists
        if h_index >= 0 & h_index < Nh then
            H(n0+1, k+1) = h(h_index+1);
        end

    end
end

y = H * x;

// Display the results
disp("Convolution matrix H:");
disp(H);

disp("Input signal x(n):");
disp(x');

disp("Impulse response h(n):");
disp(h);

disp("Convolution output y(n):");
disp(y');

nx = 0:Nx-1;
nh = 0:Nh-1;
ny = 0:Ny-1;

scf(0);
clf();

// Plot the input signal
subplot(3, 1, 1);
plot2d3(nx, x', 2);
xgrid();
xtitle("Input Signal x(n)", ...
       "Time Index n", "Amplitude");

// Plot the impulse response
subplot(3, 1, 2);
plot2d3(nh, h, 5);
xgrid();
xtitle("Impulse Response h(n)", ...
       "Time Index n", "Amplitude");

// Plot the convolution output
subplot(3, 1, 3);
plot2d3(ny, y', 3);
xgrid();
xtitle("Convolution Output y(n)", ...
       "Time Index n", "Amplitude");
