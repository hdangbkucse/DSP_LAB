clear;
clc;

x = [1, 2, -3, 2, 1];
h = [1, 0, -1, -1, 1]; 

N = length(x);

y = zeros(1, N);
for n0 = 0:N-1
    val = 0;
    for k = 0:N-1
        val = val + h(k+1) * x(pmodulo(n0 - k, N) + 1);
    end
    y(n0+1) = val;
end

n_x = 0:(N-1);
n_y = 0:(N-1);

E_x = sum(x.^2); 
E_y = sum(y.^2); 


Ex_n = x.^2;
Ey_n = y.^2;

scf(0);
clf();

// Graph 1: x(n)
subplot(3, 1, 1);
plot2d3(n_x, x, style=2);
xgrid();
xtitle("Input Signal x(n) | Total Energy E_x = " + string(E_x), "Time Index n", "Amplitude");

// Graph 2: y(n)
subplot(3, 1, 2);
plot2d3(n_y, y, style=3);
xgrid();
xtitle("Circular Convolution Output y(n) | Total Energy E_y = " + string(E_y), "Time Index n", "Amplitude");

// Graph 3: Instantaneous energy
subplot(3, 1, 3);
plot2d3(n_x, Ex_n, style=2);
plot2d3(n_y, Ey_n, style=3);
xgrid();
xtitle("Instantaneous Energy x^2(n) and y^2(n)", "Time Index n", "Energy Value");
hl = legend(["x^2(n)", "y^2(n)"]);
